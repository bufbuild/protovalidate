// Copyright 2023-2026 Buf Technologies, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package rules

import (
	"errors"
	"slices"
	"strconv"
)

// newIpv6 creates a new ipv6 based on str.
func newIpv6(str string) *ipv6 {
	return &ipv6{
		str:           str,
		doubleColonAt: -1,
	}
}

type ipv6 struct {
	str             string
	index           int
	pieces          []uint16 // 16-bit pieces found
	doubleColonAt   int      // number of 16-bit pieces found when double colon was found
	doubleColonSeen bool
	dottedRaw       string // dotted notation for right-most 32 bits
	dottedAddr      *ipv4  // dotted notation successfully parsed as IPv4
	zoneIDFound     bool
	prefixLen       int64 // 0 - 128
}

// getBits returns the 128-bit value of an address parsed through address() or
// addressPrefix(), as a 2-tuple of 64-bit values.
// Returns [0,0] if no address was parsed successfully.
//
//nolint:mnd
func (i *ipv6) getBits() [2]uint64 {
	p16 := i.pieces
	// handle dotted decimal, add to p16
	if i.dottedAddr != nil {
		dotted32 := i.dottedAddr.getBits() // right-most 32 bits
		p16 = append(p16, uint16(dotted32>>16))
		p16 = append(p16, uint16(dotted32))
	}
	// handle double colon, fill pieces with 0
	if i.doubleColonSeen {
		for len(p16) < 8 {
			// delete 0 entries at pos, insert a 0
			p16 = slices.Insert(p16, i.doubleColonAt, 0x00000000)
		}
	}
	if len(p16) != 8 {
		return [2]uint64{0, 0}
	}
	return [2]uint64{
		(uint64(p16[0]) << 48) | (uint64(p16[1]) << 32) | (uint64(p16[2]) << 16) | uint64(p16[3]),
		(uint64(p16[4]) << 48) | (uint64(p16[5]) << 32) | (uint64(p16[6]) << 16) | uint64(p16[7]),
	}
}

// isPrefixOnly returns true if all bits to the right of the prefix-length are
// all zeros. Behavior is undefined if addressPrefix() has not been called before,
// or has returned false.
//
//nolint:mnd
func (i *ipv6) isPrefixOnly() bool {
	// For each 64-bit piece of the address, require that values to the right of the prefix are zero
	for idx, p64 := range i.getBits() {
		size := i.prefixLen - 64*int64(idx)
		var mask uint64
		if size >= 64 { //nolint:gocritic
			mask = 0xFFFFFFFFFFFFFFFF
		} else if size < 0 {
			mask = 0x0
		} else {
			mask = ^(0xFFFFFFFFFFFFFFFF >> size)
		}
		masked := p64 & mask
		if p64 != masked {
			return false
		}
	}
	return true
}

// address parses an IPv6 Address following RFC 4291, with optional zone id following RFC 4007.
func (i *ipv6) address() bool {
	return i.addressPart() && i.index == len(i.str)
}

// addressPrefix parses an IPv6 Address Prefix following RFC 4291. Zone id is not permitted.
func (i *ipv6) addressPrefix() bool {
	return i.addressPart() &&
		!i.zoneIDFound &&
		i.take('/') &&
		i.prefixLength() &&
		i.index == len(i.str)
}

// prefixLength parses the length of the prefix and stores the value in prefixLen.
//
//nolint:mnd
func (i *ipv6) prefixLength() bool {
	start := i.index
	for i.digit() {
		if i.index-start > 3 {
			return false
		}
	}
	str := i.str[start:i.index]
	if len(str) == 0 {
		// too short
		return false
	}
	if len(str) > 1 && str[0] == '0' {
		// bad leading 0
		return false
	}
	value, err := strconv.ParseInt(str, 10, 32)
	if err != nil {
		return false
	}
	if value > 128 {
		// max 128 bits
		return false
	}
	i.prefixLen = value
	return true
}

// addressPart stores the dotted notation for right-most 32 bits in dottedRaw / dottedAddr if found.
//
//nolint:mnd
func (i *ipv6) addressPart() bool {
	for i.index < len(i.str) {
		// dotted notation for right-most 32 bits, e.g. 0:0:0:0:0:ffff:192.1.56.10
		if (i.doubleColonSeen || len(i.pieces) == 6) && i.dotted() {
			dotted := newIpv4(i.dottedRaw)
			if dotted.address() {
				i.dottedAddr = dotted
				return true
			}
			return false
		}
		ok, err := i.h16()
		if err != nil {
			return false
		}
		if ok {
			continue
		}
		if i.take(':') { //nolint:nestif
			if i.take(':') {
				if i.doubleColonSeen {
					return false
				}
				i.doubleColonSeen = true
				i.doubleColonAt = len(i.pieces)
				if i.take(':') {
					return false
				}
			} else if i.index == 1 || i.index == len(i.str) {
				// invalid - string cannot start or end on single colon
				return false
			}
			continue
		}
		if i.str[i.index] == '%' && !i.zoneID() {
			return false
		}
		break
	}
	if i.doubleColonSeen {
		return len(i.pieces) < 8
	}
	return len(i.pieces) == 8
}

// zoneID parses the rule from RFC 6874:
//
//	ZoneID = 1*( unreserved / pct-encoded )
//
// There is no definition for the character set allowed in the zone
// identifier. RFC 4007 permits basically any non-null string.
func (i *ipv6) zoneID() bool {
	start := i.index
	if i.take('%') {
		if len(i.str)-i.index > 0 {
			// permit any non-null string
			i.index = len(i.str)
			i.zoneIDFound = true
			return true
		}
	}
	i.index = start
	i.zoneIDFound = false
	return false
}

// dotted parses the rule:
//
//	1*3DIGIT "." 1*3DIGIT "." 1*3DIGIT "." 1*3DIGIT
//
// Stores match in dottedRaw.
//
//nolint:mnd
func (i *ipv6) dotted() bool {
	start := i.index
	i.dottedRaw = ""
	//nolint:revive
	for i.digit() || i.take('.') {
		// Consume '*( DIGIT "." )'
	}
	if i.index-start >= 7 {
		i.dottedRaw = i.str[start:i.index]
		return true
	}
	i.index = start
	return false
}

// h16 parses the rule:
//
//	h16 = 1*4HEXDIG
//
// If 1-4 hex digits are found, the parsed 16-bit unsigned integer is stored
// in pieces and true is returned.
// If 0 hex digits are found, returns false.
// If more than 4 hex digits are found, returns an error.
//
//nolint:mnd
func (i *ipv6) h16() (bool, error) {
	start := i.index
	for i.hexdig() {
		if i.index-start > 4 {
			// too long
			// this is an error condition, it means we found a string of more than
			// four valid hex digits, which is invalid in ipv6 addresses.
			return false, errors.New("invalid hex")
		}
	}
	str := i.str[start:i.index]
	if len(str) == 0 {
		// too short, just return false
		// this is not an error condition, it just means we didn't find any
		// hex digits at the current position.
		return false, nil
	}

	value, err := strconv.ParseUint(str, 16, 16)
	if err != nil {
		// This is also an error condition. It means the parsed hextet we found
		// cannot be converted into a number
		return false, err
	}
	i.pieces = append(i.pieces, uint16(value))
	return true, nil
}

// hexdig parses the rule:
//
//	HEXDIG =  DIGIT / "A" / "B" / "C" / "D" / "E" / "F"
func (i *ipv6) hexdig() bool {
	if i.index >= len(i.str) {
		return false
	}
	c := i.str[i.index]
	if ('0' <= c && c <= '9') ||
		('a' <= c && c <= 'f') ||
		('A' <= c && c <= 'F') {
		i.index++
		return true
	}
	return false
}

// digit parses the rule:
//
//	DIGIT = %x30-39  ; 0-9
func (i *ipv6) digit() bool {
	if i.index >= len(i.str) {
		return false
	}
	c := i.str[i.index]
	if '0' <= c && c <= '9' {
		i.index++
		return true
	}
	return false
}

// take reports whether the current position in the string is the character char.
func (i *ipv6) take(char byte) bool {
	if i.index >= len(i.str) {
		return false
	}
	if i.str[i.index] == char {
		i.index++
		return true
	}
	return false
}
