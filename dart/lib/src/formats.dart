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

// String-format checks for the subset of `StringRules` the runtime supports:
// `email`, `uri`, and `uuid`. These mirror protovalidate's CEL string
// functions (`isEmail`, `isUri`) and the `uuid` regex declared in
// validate.proto. Callers handle the empty-string case separately (empty
// yields the `_empty` rule id), so these operate on non-empty input.

// The WHATWG HTML living-standard email regex, which protovalidate uses in
// place of the stricter RFC 5322 grammar.
final RegExp _email = RegExp(
  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+"
  r'@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?'
  r'(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$',
);

// An RFC 3986 scheme: ALPHA *( ALPHA / DIGIT / "+" / "-" / "." ).
final RegExp _scheme = RegExp(r'^[A-Za-z][A-Za-z0-9+\-.]*:');

// Every character permitted anywhere in an RFC 3986 URI: unreserved, reserved
// (gen-delims + sub-delims), or a percent-encoded octet. A bare "%" not
// followed by two hex digits is rejected, which is how malformed encodings such
// as "%x" fail.
final RegExp _uriChars = RegExp(
  r"^(?:[A-Za-z0-9\-._~:/?#\[\]@!$&'()*+,;=]|%[0-9A-Fa-f]{2})*$",
);

final RegExp _uuid = RegExp(
  r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}'
  r'-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
);

/// Whether [value] is a valid email address per the WHATWG regex.
bool isEmail(String value) => _email.hasMatch(value);

/// Whether [value] is a valid RFC 3986 URI (an absolute URI with a scheme and
/// only valid characters / percent-encoding).
bool isUri(String value) => _scheme.hasMatch(value) && _uriChars.hasMatch(value);

/// Whether [value] is a canonical hyphenated UUID.
bool isUuid(String value) => _uuid.hasMatch(value);
