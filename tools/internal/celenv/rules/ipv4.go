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

import "strconv"

// newIpv4 creates a new ipv4 based on str.
func newIpv4(str string) *ipv4 {
	return &ipv4{
		str: str,
	}
}

type ipv4 struct {
	str       string
	index     int
	octets    []uint8
	prefixLen int64
}

// getBits returns the 32-bit value of an address parsed through address() or addressPrefix().
// Returns 0 if no address was parsed successfully.
//
//nolint:mnd
func (i *ipv4) getBits() uint32 {
	if len(i.octets) != 4 {
		return 0
	}
	return (uint32(i.octets[0]) << 24) | (uint32(i.octets[1]) << 16) | (uint32(i.octets[2]) << 8) | uint32(i.octets[3])
}

// isPrefixOnly returns true if all bits to the right of the prefix-length are
// all zeros. Behavior is undefined if addressPrefix() has not been called before,
// or has returned false.
//
//nolint:mnd
func (i *ipv4) isPrefixOnly() bool {
	bits := i.getBits()
	var mask uint32
	if i.prefixLen == 32 {
		mask = 0xffffffff
	} else {
		mask = ^(0xffffffff >> i.prefixLen)
	}
	masked := bits & mask
	return bits == masked
}

// address parses an IPv4 Address in dotted decimal notation.
func (i *ipv4) address() bool {
	return i.addressPart() && i.index == len(i.str)
}

// addressPrefix parses an IPv4 Address prefix.
func (i *ipv4) addressPrefix() bool {
	return i.addressPart() &&
		i.take('/') &&
		i.prefixLength() &&
		i.index == len(i.str)
}

// prefixLength parses the length of the prefix and stores the value in prefixLen.
//
//nolint:mnd
func (i *ipv4) prefixLength() bool {
	start := i.index
	for i.digit() {
		if i.index-start > 2 {
			// max prefix-length is 32 bits, so anything more than 2 digits is invalid
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
	value, err := strconv.ParseInt(str, 0, 32)
	if err != nil {
		// Error converting to number
		return false
	}
	if value > 32 {
		// max 32 bits
		return false
	}
	i.prefixLen = value
	return true
}

// addressPart parses str from the current index to determine an address part.
func (i *ipv4) addressPart() bool {
	start := i.index
	if i.decOctet() &&
		i.take('.') &&
		i.decOctet() &&
		i.take('.') &&
		i.decOctet() &&
		i.take('.') &&
		i.decOctet() {
		return true
	}
	i.index = start
	return false
}

// decOctet parses str from the current index to determine a decimal octet.
//
//nolint:mnd
func (i *ipv4) decOctet() bool {
	start := i.index
	for i.digit() {
		if i.index-start > 3 {
			// decimal octet can be three characters at most
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
	if value > 255 {
		return false
	}
	i.octets = append(i.octets, byte(value))
	return true
}

// digit parses the rule:
//
//	DIGIT = %x30-39  ; 0-9
func (i *ipv4) digit() bool {
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
func (i *ipv4) take(char byte) bool {
	if i.index >= len(i.str) {
		return false
	}
	if i.str[i.index] == char {
		i.index++
		return true
	}
	return false
}
