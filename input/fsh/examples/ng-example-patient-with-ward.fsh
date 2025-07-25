Instance: ExampleNgPatientAdminWard
InstanceOf: NgImmPatient
Title: "NG-Imm Example Patient with Ward data"
Description: "A fictional example of a patient with information on administrative ward"
Usage: #example

* meta.lastUpdated = "2018-07-09T11:11:11Z"
* identifier[0].system = "http://neir.org/mrn"
* identifier[0].value = "12345"
* name[0].family = "Hakeem"
* name[0].given[0] = "Bisola"
* gender = #male
* contact[0].relationship[0].text[0] = "Parent"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+2347030001111"
* contact[0].address.line[0] = "Plot 25, Area 11"
* contact[0].address.city = "Abuja"
* contact[0].address.state = "FCT"
* contact[0].address.extension[+].url = "administrativeWard"
* contact[0].address.extension[=].valueCodeableConcept = #alu

// Image

* photo[0].data = "VGhpcyBpcyBhIHNhbXBsZSBpbWFnZSBkYXRh" // Base64 image data
* photo[0].size = 5
* photo[0].title = "Elephant health image data for maitama"
