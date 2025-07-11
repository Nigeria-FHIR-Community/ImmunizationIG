CodeSystem: NGSiblingHealthStatusCS
Id: nigeria-sibling-health-status
Title: "NG-Imm Sibling Health Status CS"
Description: "This CodeSystem defines the health of the client's sibling"
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-sibling-health-statusCS"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Sibling Health Status
* #alive	"Alive" "Sibling referenced is still alive"
* #dead	"Dead" "Sibling referenced is dead"
* #well	"well" "Sibling reference is alive and well"
* #diseased "underlying disease" "Referenced Sibling has an underlying disease"


CodeSystem: NGHivStatusCS
Id: nigeria-hiv-status
Title: "NG-Imm Client HIV status CS"
Description: "This CodeSystem defines list of options for HIV status of a Client"
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-hiv-statusCS"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Client's HIV Status
* #positive	"Positive" "The Client is HIV positive"
* #negative	"Negative" "The Client is HIV Negative"
* #unknown	"Unknown" "The Client does not know their HIV status"


CodeSystem: NGPregnancyStatusCS
Id: nigeria-pregnancy-status
Title: "NG-Imm Client Pregnancy status CS"
Description: "This CodeSystem defines list of options for Pregnancy status of a Client"
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-pregnancy-statusCS"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Pregnancy Status
* #pregnant	"Pregnant" "The Client's pregnancy status is positive"
* #notpregnant	"Not Pregnant" "The Client's pregnancy status is negative"
* #unknown	"Not known" "The Client does not know their Pregnancy status"

CodeSystem: NGFacilityTypeCS
Id: nigeria-facility-type
Title: "NG-Imm Facility Type CS"
Description: "A standardized classification system used to describe the type or level of health facility within a healthcare delivery system, based on the scope of services provided, staffing, infrastructure, and administrative role."
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-facility-typeCS"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Grouping different Facility types
* #clinic	"Clinic" "The Health facility is a primary health facility"
* #hospital	"Hospital" "The Health facility is a Secondary health facilities and General Hospitals"
* #health-post	"Health Post" "The Health facility is a primary health facility in category of dispensories"
* #chc	"Comprehensive Health Centers" "The Health facility is a comprehensive primary health center owned by the government"
* #tertiary	"Tertiary facility" "These are Higher level facilities and referal centers)"

CodeSystem: NGGenderCS
Id: nigeria-gender
Title: "NG-Imm Gender CS"
Description: "The administrative gender of a person."
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-genderCS"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Gender/sex of a client
* #male "male" "Client is of the male gender"
* #female "female" "Client is of the female gender"