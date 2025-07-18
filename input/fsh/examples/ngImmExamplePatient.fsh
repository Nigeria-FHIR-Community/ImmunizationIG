Instance: NgImmExamplePatient
InstanceOf: NgImmPatient
Title: "NGImm Example Patient used in Bundle"
Description: "Sample patient for use with Bunlde and resident in Kogi State"
Usage: #example

* meta.lastUpdated = "2025-07-04T08:30:00+01:00"

* identifier.system = "https://nimc.gov.ng"
* identifier.value = "NIN98765432100"

* name[0].family = "Abdulraheem"
* name[0].given[0] = "Zainab"

* gender = #female "Female"
* birthDate = "2024-02-20"
* active = true

* address.line = "No. 10, Igalamela Compound, Ankpa"
* address.city = "Ankpa"
* address.district = #ko-ankpa "Ankpa"
* address.state = #KO "Kogi"
* address.extension[administrativeWard].valueCodeableConcept = #amac-01 "Enjema"

* contact.name.family = "Abdulraheem"
* contact.name.given[0] = "Aisha"
* contact.telecom.system = #phone
* contact.telecom.value = "+2348031234567"
* contact.relationship.text = #mother "Mother"
* contact.address.line = "No. 10, Igalamela Compound"
* contact.address.city = "Ankpa"
* contact.address.district = #ko-ankpa "Ankpa"
* contact.address.state = #KO "Kogi"
* contact.address.extension[administrativeWard].valueCodeableConcept = #KO0802 "Enjema"

* communication[0].language = #ibo "Igbo"
* photo[0].url = "https://personal_server.org/photos/zainab-abdulraheem.jpg"

* extension[birthWeight].valueDecimal = 3.1
* extension[pregnancyStatus].valueCodeableConcept = #notpregnant "Not Pregnant"
* extension[ageInWeeks].valueInteger = 20
* extension[ageInMonths].valueInteger = 5
* extension[ageInYears].valueInteger = 0
