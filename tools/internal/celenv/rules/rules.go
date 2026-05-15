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
	"regexp"
	"strconv"
	"strings"
)

var (
	// See https://html.spec.whatwg.org/multipage/input.html#valid-e-mail-address
	emailRegex = regexp.MustCompile("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")
)

// IsEmail reports whether val is an email address, for example "foo@example.com".
//
// Conforms to the definition for a valid email address from the HTML standard.
// Note that this standard willfully deviates from RFC 5322, which allows many
// unexpected forms of email addresses and will easily match a typographical
// error.
func IsEmail(val string) bool {
	return emailRegex.MatchString(val)
}

// IsURI reports whether val is a URI, for example "https://example.com/foo/bar?baz=quux#frag".
//
// URI is defined in the internet standard RFC 3986.
// Zone Identifiers in IPv6 address literals are supported (RFC 6874).
func IsURI(val string) bool {
	uri := &uri{
		str: val,
	}
	return uri.uri()
}

// IsURIRef reports whether val is a URI Reference - a URI such as
// "https://example.com/foo/bar?baz=quux#frag", or a Relative Reference such as
// "./foo/bar?query".
//
// URI, URI Reference, and Relative Reference are defined in the internet
// standard RFC 3986. Zone Identifiers in IPv6 address literals are supported
// (RFC 6874).
func IsURIRef(val string) bool {
	uri := &uri{
		str: val,
	}
	return uri.uriReference()
}

// IsIP returns true if the string is an IPv4 or IPv6 address, optionally limited to
// a specific version.
//
// Version 0 means either 4 or 6. Passing a version other than 0, 4, or 6 always
// returns false.
//
// IPv4 addresses are expected in the dotted decimal format, for example "192.168.5.21".
// IPv6 addresses are expected in their text representation, for example "::1",
// or "2001:0DB8:ABCD:0012::0".
//
// Both formats are well-defined in the internet standard RFC 3986. Zone
// identifiers for IPv6 addresses (for example "fe80::a%en1") are supported.
//
//nolint:mnd
func IsIP(str string, version int64) bool {
	if version == 6 {
		return newIpv6(str).address()
	}
	if version == 4 {
		return newIpv4(str).address()
	}
	if version == 0 {
		return newIpv4(str).address() || newIpv6(str).address()
	}
	return false
}

// IsIPPrefix returns true if the string is a valid IP with prefix length, optionally
// limited to a specific version (v4 or v6), and optionally requiring the host
// portion to be all zeros.
//
// An address prefix divides an IP address into a network portion, and a host
// portion. The prefix length specifies how many bits the network portion has.
// For example, the IPv6 prefix "2001:db8:abcd:0012::0/64" designates the
// left-most 64 bits as the network prefix. The range of the network is 2**64
// addresses, from 2001:db8:abcd:0012::0 to 2001:db8:abcd:0012:ffff:ffff:ffff:ffff.
//
// An address prefix may include a specific host address, for example
// "2001:db8:abcd:0012::1f/64". With strict = true, this is not permitted. The
// host portion must be all zeros, as in "2001:db8:abcd:0012::0/64".
//
// The same principle applies to IPv4 addresses. "192.168.1.0/24" designates
// the first 24 bits of the 32-bit IPv4 as the network prefix.
//
//nolint:mnd
func IsIPPrefix(
	str string,
	version int64,
	strict bool,
) bool {
	if version == 6 {
		ip := newIpv6(str)
		return ip.addressPrefix() && (!strict || ip.isPrefixOnly())
	}
	if version == 4 {
		ip := newIpv4(str)
		return ip.addressPrefix() && (!strict || ip.isPrefixOnly())
	}
	if version == 0 {
		return IsIPPrefix(str, 6, strict) || IsIPPrefix(str, 4, strict)
	}
	return false
}

// IsHostname returns true if the string is a valid hostname, for example "foo.example.com".
//
// A valid hostname follows the rules below:
//   - The name consists of one or more labels, separated by a dot (".").
//   - Each label can be 1 to 63 alphanumeric characters.
//   - A label can contain hyphens ("-"), but must not start or end with a hyphen.
//   - The right-most label must not be digits only.
//   - The name can have a trailing dot, for example "foo.example.com.".
//   - The name can be 253 characters at most, excluding the optional trailing dot.
//
//nolint:mnd
func IsHostname(val string) bool {
	if len(val) > 253 {
		return false
	}
	var str string
	if strings.HasSuffix(val, ".") {
		str = val[0 : len(val)-1]
	} else {
		str = val
	}

	allDigits := false

	// split hostname on '.' and validate each part
	for part := range strings.SplitSeq(str, ".") {
		allDigits = true
		// if part is empty, longer than 63 chars, or starts/ends with '-', it is invalid
		l := len(part)
		if l == 0 || l > 63 || strings.HasPrefix(part, "-") || strings.HasSuffix(part, "-") {
			return false
		}
		// for each character in part
		for i := range len(part) {
			c := part[i]
			// if the character is not a-z, A-Z, 0-9, or '-', it is invalid
			if (c < 'a' || c > 'z') && (c < 'A' || c > 'Z') && (c < '0' || c > '9') && c != '-' {
				return false
			}
			allDigits = allDigits && c >= '0' && c <= '9'
		}
	}
	// the last part cannot be all numbers
	return !allDigits
}

// IsHostAndPort returns true if the string is a valid host/port pair, for example
// "example.com:8080".
//
// If the argument portRequired is true, the port is required. If the argument
// is false, the port is optional.
//
// The host can be one of:
//   - An IPv4 address in dotted decimal format, for example "192.168.0.1".
//   - An IPv6 address enclosed in square brackets, for example "[::1]".
//   - A hostname, for example "example.com".
//
// The port is separated by a colon. It must be non-empty, with a decimal number
// in the range of 0-65535, inclusive.
//
//nolint:mnd
func IsHostAndPort(str string, portRequired bool) bool {
	if len(str) == 0 {
		return false
	}
	splitIdx := strings.LastIndex(str, ":")
	if str[0] == '[' {
		end := strings.LastIndex(str, "]")
		switch end + 1 {
		case len(str): // no port
			return !portRequired && IsIP(str[1:end], 6)
		case splitIdx: // port
			return IsIP(str[1:end], 6) && isPort(str[splitIdx+1:])
		default: // malformed
			return false
		}
	}
	if splitIdx < 0 {
		return !portRequired && (IsHostname(str) || IsIP(str, 4))
	}
	host := str[0:splitIdx]
	port := str[splitIdx+1:]
	return (IsHostname(host) || IsIP(host, 4)) && isPort(port)
}

// isPort returns true if the string is a valid port for IsHostAndPort.
//
//nolint:mnd
func isPort(str string) bool {
	if len(str) == 0 {
		return false
	}
	for i := range len(str) {
		c := str[i]
		if '0' <= c && c <= '9' {
			continue
		}
		return false
	}
	if len(str) > 1 && str[0] == '0' {
		// bad leading 0
		return false
	}
	val, err := strconv.ParseUint(str, 0, 32)
	if err != nil {
		return false
	}
	return val <= 65535
}
