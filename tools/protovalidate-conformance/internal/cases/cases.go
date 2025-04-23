// Copyright 2023-2025 Buf Technologies, Inc.
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

package cases

import (
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
)

// GlobalSuites is used by the conformance harness, containing all tests to be
// run against implementation targets. The source proto messages used for the
// tests can be found in /protos/testing/buf/validate/conformance/cases.
func GlobalSuites() suites.Suites {
	return suites.Suites{
		"custom_rules":                              customSuite(),
		"predefined_rules":                          predefinedSuite(),
		"kitchen_sink":                              kitchenSinkSuite(),
		"standard_rules/bool":                       boolSuite(),
		"standard_rules/bytes":                      bytesSuite(),
		"standard_rules/double":                     doubleSuite(),
		"standard_rules/enum":                       enumSuite(),
		"standard_rules/fixed32":                    fixed32Suite(),
		"standard_rules/fixed64":                    fixed64Suite(),
		"standard_rules/float":                      floatSuite(),
		"standard_rules/int32":                      int32Suite(),
		"standard_rules/int64":                      int64Suite(),
		"standard_rules/map":                        mapSuite(),
		"standard_rules/message":                    messageSuite(),
		"standard_rules/nested":                     nestedSuite(),
		"standard_rules/oneof":                      oneofSuite(),
		"standard_rules/repeated":                   repeatedSuite(),
		"standard_rules/required":                   requiredSuite(),
		"standard_rules/ignore":                     ignoreSuite(),
		"standard_rules/ignore_empty":               ignoreEmptySuite(),
		"standard_rules/sfixed32":                   sfixed32Suite(),
		"standard_rules/sfixed64":                   sfixed64Suite(),
		"standard_rules/sint32":                     sint32Suite(),
		"standard_rules/sint64":                     sint64Suite(),
		"standard_rules/string":                     stringSuite(),
		"standard_rules/uint32":                     uint32Suite(),
		"standard_rules/uint64":                     uint64Suite(),
		"standard_rules/well_known_types/any":       anySuite(),
		"standard_rules/well_known_types/duration":  durationSuite(),
		"standard_rules/well_known_types/timestamp": timestampSuite(),
		"standard_rules/well_known_types/wrapper":   wrapperSuite(),
		"library/is_hostname":                       isHostnameSuite(),
		"library/is_host_and_port":                  isHostAndPortSuite(),
		"library/is_ip_prefix":                      isIPPrefixSuite(),
		"library/is_ip":                             isIPSuite(),
		"library/is_email":                          isEmailSuite(),
		"library/is_uri":                            isURISuite(),
		"library/is_uri_ref":                        isURIRefSuite(),
	}
}
