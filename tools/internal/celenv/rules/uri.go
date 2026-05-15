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

import "unicode/utf8"

type uri struct {
	str             string
	index           int
	pctEncodedFound bool
}

// uri parses the rule:
//
//	URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
func (u *uri) uri() bool {
	start := u.index
	if !(u.scheme() && u.take(':') && u.hierPart()) {
		u.index = start
		return false
	}
	if u.take('?') && !u.query() {
		return false
	}
	if u.take('#') && !u.fragment() {
		return false
	}
	if u.index != len(u.str) {
		u.index = start
		return false
	}
	return true
}

// uriReference parses the rule:
//
//	URI-reference = URI / relative-ref.
func (u *uri) uriReference() bool {
	return u.uri() || u.relativeRef()
}

// hierPart parses the rule:
//
//	hier-part = "//" authority path-abempty.
//			    / path-absolute
//		        / path-rootless
//		        / path-empty.
func (u *uri) hierPart() bool {
	start := u.index
	if u.takeDoubleSlash() &&
		u.authority() &&
		u.pathAbempty() {
		return true
	}
	u.index = start
	return u.pathAbsolute() || u.pathRootless() || u.pathEmpty()
}

// relativeRef parses the rule:
//
//	relative-ref = relative-part [ "?" query ] [ "#" fragment ].
func (u *uri) relativeRef() bool {
	start := u.index
	if !u.relativePart() {
		return false
	}
	if u.take('?') && !u.query() {
		u.index = start
		return false
	}
	if u.take('#') && !u.fragment() {
		u.index = start
		return false
	}
	if u.index != len(u.str) {
		u.index = start
		return false
	}
	return true
}

// relativePart parses the rule:
//
//	relative-part = "//" authority path-abempty
//		          / path-absolute
//		          / path-noscheme
//		          / path-empty
func (u *uri) relativePart() bool {
	start := u.index
	if u.takeDoubleSlash() &&
		u.authority() &&
		u.pathAbempty() {
		return true
	}
	u.index = start
	return u.pathAbsolute() || u.pathNoscheme() || u.pathEmpty()
}

// scheme parses the rule:
//
//	scheme = ALPHA *( ALPHA / DIGIT / "+" / "-" / "." )
//
// Terminated by ":".
func (u *uri) scheme() bool {
	start := u.index
	if u.alpha() {
		//nolint:revive // this loop is intentionally empty to consume tokens
		for u.alpha() || u.digit() || u.take('+') || u.take('-') || u.take('.') {
			// Consume '*( ALPHA / DIGIT / "+" / "-" / "." )'
		}
		if u.peek(':') {
			return true
		}
	}
	u.index = start
	return false
}

// authority parses the rule:
//
//	authority = [ userinfo "@" ] host [ ":" port ]
//
// Lead by double slash ("") and terminated by "/", "?", "#", or end of URI.
func (u *uri) authority() bool {
	start := u.index
	if u.userinfo() {
		if !u.take('@') {
			u.index = start
			return false
		}
	}
	if !u.host() {
		u.index = start
		return false
	}
	if u.take(':') {
		if !u.port() {
			u.index = start
			return false
		}
	}
	if !u.isAuthorityEnd() {
		u.index = start
		return false
	}
	return true
}

// isAuthorityEnd reports whether the current position is the end of the authority.
//
//	The authority component [...] is terminated by the next slash ("/"),
//	question mark ("?"), or number sign ("#") character, or by the
//	end of the URI.
func (u *uri) isAuthorityEnd() bool {
	return u.index >= len(u.str) ||
		u.str[u.index] == '?' ||
		u.str[u.index] == '#' ||
		u.str[u.index] == '/'
}

// userinfo parses the rule:
//
//	userinfo = *( unreserved / pct-encoded / sub-delims / ":" )
//
// Terminated by "@" in authority.
func (u *uri) userinfo() bool {
	start := u.index
	for {
		if u.unreserved() ||
			u.pctEncoded() ||
			u.subDelims() ||
			u.take(':') {
			continue
		}
		if u.index < len(u.str) {
			if u.str[u.index] == '@' {
				return true
			}
		}
		u.index = start
		return false
	}
}

// checkHostPctEncoded verifies that str is correctly percent-encoded.
//
//nolint:mnd
func (u *uri) checkHostPctEncoded(str string) bool {
	unhex := func(char byte) byte {
		switch {
		case '0' <= char && char <= '9':
			return char - '0'
		case 'a' <= char && char <= 'f':
			return char - 'a' + 10
		case 'A' <= char && char <= 'F':
			return char - 'A' + 10
		}
		return 0
	}
	escaped := make([]byte, 0, len(str))
	for i := 0; i < len(str); {
		switch str[i] {
		case '%':
			escaped = append(escaped, unhex(str[i+1])<<4|unhex(str[i+2]))
			i += 3
		default:
			escaped = append(escaped, str[i])
			i++
		}
	}
	return utf8.Valid(escaped)
}

// host parses the rule:
//
//	host = IP-literal / IPv4address / reg-name
func (u *uri) host() bool {
	start := u.index
	u.pctEncodedFound = false
	// Note: IPv4address is a subset of reg-name
	if (u.peek('[') && u.ipLiteral()) || u.regName() {
		if u.pctEncodedFound {
			rawHost := u.str[start:u.index]
			// RFC 3986:
			// > URI producing applications must not use percent-encoding in host
			// > unless it is used to represent a UTF-8 character sequence.
			if !u.checkHostPctEncoded(rawHost) {
				return false
			}
		}
		return true
	}
	return false
}

// port parses the rule:
//
//	port = *DIGIT
//
// Terminated by end of authority.
func (u *uri) port() bool {
	start := u.index
	for u.digit() {
		// Consume '*DIGIT'
	}
	if u.isAuthorityEnd() {
		return true
	}
	u.index = start
	return false
}

// ipLiteral parses the rule from RFC 6874:
//
//	IP-literal = "[" ( IPv6address / IPv6addrz / IPvFuture  ) "]"
func (u *uri) ipLiteral() bool {
	start := u.index
	if u.take('[') {
		currIdx := u.index
		if u.ipv6Address() && u.take(']') {
			return true
		}
		u.index = currIdx
		if u.ipv6addrz() && u.take(']') {
			return true
		}
		u.index = currIdx
		if u.ipvFuture() && u.take(']') {
			return true
		}
	}
	u.index = start
	return false
}

// ipv6Address parses the rule "IPv6address".
//
// Relies on the implementation of IsIP.
//
//nolint:mnd
func (u *uri) ipv6Address() bool {
	start := u.index
	//nolint:revive // this loop is intentionally empty to consume tokens
	for u.hexdig() || u.take(':') {
		// Consume '*( HEXDIG / ":" )'
	}
	if IsIP(u.str[start:u.index], 6) {
		return true
	}
	u.index = start
	return false
}

// ipv6addrz parses the rule from RFC 6874:
//
//	IPv6addrz = IPv6address "%25" ZoneID
func (u *uri) ipv6addrz() bool {
	start := u.index
	if u.ipv6Address() &&
		u.take('%') &&
		u.take('2') &&
		u.take('5') &&
		u.zoneID() {
		return true
	}
	u.index = start
	return false
}

// zoneID parses the rule from RFC 6874:
//
//	ZoneID = 1*( unreserved / pct-encoded )
func (u *uri) zoneID() bool {
	start := u.index
	//nolint:revive // this loop is intentionally empty to consume tokens
	for u.unreserved() || u.pctEncoded() {
		// Consume '*( unreserved / pct-encoded )'
	}
	if u.index-start > 0 {
		return true
	}
	u.index = start
	return false
}

// ipvFuture parses the rule:
//
//	IPvFuture  = "v" 1*HEXDIG "." 1*( unreserved / sub-delims / ":" )
func (u *uri) ipvFuture() bool {
	start := u.index
	if u.take('v') && u.hexdig() {
		for u.hexdig() {
			// Consume '*HEXDIG'
		}
		if u.take('.') {
			counter := 0
			for u.unreserved() || u.subDelims() || u.take(':') {
				counter++
			}
			if counter >= 1 {
				return true
			}
		}
	}
	u.index = start
	return false
}

// regName parses the rule:
//
//	reg-name = *( unreserved / pct-encoded / sub-delims )
//
// Terminates on start of port (":") or end of authority.
func (u *uri) regName() bool {
	start := u.index
	for {
		if u.unreserved() || u.pctEncoded() || u.subDelims() {
			continue
		}
		if u.isAuthorityEnd() {
			// End of authority
			return true
		}
		if u.str[u.index] == ':' {
			return true
		}
		u.index = start
		return false
	}
}

// isPathEnd reports whether the current position is the end of the path.
//
//	The path is terminated by the first question mark ("?") or
//	number sign ("#") character, or by the end of the URI.
func (u *uri) isPathEnd() bool {
	return u.index >= len(u.str) || u.str[u.index] == '?' || u.str[u.index] == '#'
}

// pathAbempty parses the rule:
//
//	path-abempty = *( "/" segment )
//
// Terminated by end of path: "?", "#", or end of URI.
func (u *uri) pathAbempty() bool {
	start := u.index
	//nolint:revive // this loop is intentionally empty to consume tokens
	for u.take('/') && u.segment() {
		// Consume '*( "/" segment )'
	}
	if u.isPathEnd() {
		return true
	}
	u.index = start
	return false
}

// pathAbsolute parses the rule:
//
//	path-absolute = "/" [ segment-nz *( "/" segment ) ]
//
// Terminated by end of path: "?", "#", or end of URI.
func (u *uri) pathAbsolute() bool {
	start := u.index
	if u.take('/') {
		if u.segmentNz() {
			//nolint:revive // this loop is intentionally empty to consume tokens
			for u.take('/') && u.segment() {
				// Consume '*( "/" segment )'
			}
		}
		if u.isPathEnd() {
			return true
		}
	}
	u.index = start
	return false
}

// pathNoscheme parses the rule:
//
//	path-noscheme = segment-nz-nc *( "/" segment )
//
// Terminated by end of path: "?", "#", or end of URI.
func (u *uri) pathNoscheme() bool {
	start := u.index
	if u.segmentNzNc() {
		//nolint:revive // this loop is intentionally empty to consume tokens
		for u.take('/') && u.segment() {
			// Consume *( "/" segment )
		}
		if u.isPathEnd() {
			return true
		}
	}
	u.index = start
	return false
}

// pathRootless parses the rule:
//
//	path-rootless = segment-nz *( "/" segment )
//
// Terminated by end of path: "?", "#", or end of URI.
func (u *uri) pathRootless() bool {
	start := u.index
	if u.segmentNz() {
		//nolint:revive // this loop is intentionally empty to consume tokens
		for u.take('/') && u.segment() {
			// Consume *( '/' segment )
		}
		if u.isPathEnd() {
			return true
		}
	}
	u.index = start
	return false
}

// pathEmpty parses the rule:
//
//	path-empty = 0<pchar>
//
// Terminated by end of path: "?", "#", or end of URI.
func (u *uri) pathEmpty() bool {
	return u.isPathEnd()
}

// segment parses the rule:
//
//	segment = *pchar
func (u *uri) segment() bool {
	for u.pchar() {
		// Consume '*pchar'
	}
	return true
}

// segmentNz parses the rule:
//
//	segment-nz = 1*pchar
func (u *uri) segmentNz() bool {
	start := u.index
	if u.pchar() {
		return u.segment()
	}
	u.index = start
	return false
}

// segmentNzNc parses the rule:
//
//	segment-nz-nc = 1*( unreserved / pct-encoded / sub-delims / "@" )
//	             ; non-zero-length segment without any colon ":"
func (u *uri) segmentNzNc() bool {
	start := u.index
	//nolint:revive // this loop is intentionally empty to consume tokens
	for u.unreserved() || u.pctEncoded() || u.subDelims() || u.take('@') {
		// Consume '*( unreserved / pct-encoded / sub-delims / "@" )'
	}
	if u.index-start > 0 {
		return true
	}
	u.index = start
	return false
}

// pchar parses the rule:
//
//	pchar = unreserved / pct-encoded / sub-delims / ":" / "@"
func (u *uri) pchar() bool {
	return u.unreserved() ||
		u.pctEncoded() ||
		u.subDelims() ||
		u.take(':') ||
		u.take('@')
}

// query parses the rule:
//
//	query = *( pchar / "/" / "?" )
//
// Terminated by "#" or end of URI.
func (u *uri) query() bool {
	start := u.index
	for {
		if u.pchar() || u.take('/') || u.take('?') {
			continue
		}
		if u.index == len(u.str) || u.str[u.index] == '#' {
			return true
		}
		u.index = start
		return false
	}
}

// fragment parses the rule:
//
//	fragment = *( pchar / "/" / "?" )
//
// Terminated by end of URI.
func (u *uri) fragment() bool {
	start := u.index
	for {
		if u.pchar() || u.take('/') || u.take('?') {
			continue
		}
		if u.index == len(u.str) {
			return true
		}
		u.index = start
		return false
	}
}

// pctEncoded parses the rule:
//
//	pct-encoded = "%"+HEXDIG+HEXDIG
//
// Sets `pctEncodedFound` to true if a valid triplet was found.
func (u *uri) pctEncoded() bool {
	start := u.index
	if u.take('%') && u.hexdig() && u.hexdig() {
		u.pctEncodedFound = true
		return true
	}
	u.index = start
	return false
}

// unreserved parses the rule:
//
//	unreserved = ALPHA / DIGIT / "-" / "." / "_" / "~"
func (u *uri) unreserved() bool {
	return u.alpha() ||
		u.digit() ||
		u.take('-') ||
		u.take('_') ||
		u.take('.') ||
		u.take('~')
}

// subDelims parses the rule:
//
//	sub-delims  = "!" / "$" / "&" / "'" / "(" / ")"
//	            / "*" / "+" / "," / ";" / "="
func (u *uri) subDelims() bool {
	return u.take('!') ||
		u.take('$') ||
		u.take('&') ||
		u.take('\'') ||
		u.take('(') ||
		u.take(')') ||
		u.take('*') ||
		u.take('+') ||
		u.take(',') ||
		u.take(';') ||
		u.take('=')
}

// alpha parses the rule:
//
//	ALPHA =  %x41-5A / %x61-7A ; A-Z / a-z
func (u *uri) alpha() bool {
	if u.index >= len(u.str) {
		return false
	}
	c := u.str[u.index]
	if ('A' <= c && c <= 'Z') || ('a' <= c && c <= 'z') {
		u.index++
		return true
	}
	return false
}

// digit parses the rule:
//
//	DIGIT = %x30-39  ; 0-9
func (u *uri) digit() bool {
	if u.index >= len(u.str) {
		return false
	}
	c := u.str[u.index]
	if '0' <= c && c <= '9' {
		u.index++
		return true
	}
	return false
}

// hexdig parses the rule:
//
//	HEXDIG =  DIGIT / "A" / "B" / "C" / "D" / "E" / "F"
func (u *uri) hexdig() bool {
	if u.index >= len(u.str) {
		return false
	}
	c := u.str[u.index]
	if ('0' <= c && c <= '9') ||
		('a' <= c && c <= 'f') ||
		('A' <= c && c <= 'F') {
		u.index++
		return true
	}
	return false
}

// take reports whether the current position in the string is the character char.
func (u *uri) take(char byte) bool {
	if u.index >= len(u.str) {
		return false
	}
	if u.str[u.index] == char {
		u.index++
		return true
	}
	return false
}

func (u *uri) takeDoubleSlash() bool {
	first := u.take('/')
	return first && u.take('/')
}

func (u *uri) peek(char byte) bool {
	return u.index < len(u.str) && u.str[u.index] == char
}
