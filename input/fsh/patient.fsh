// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* identifier ^slicing.discriminator[+].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open

Profile: MyDerivedPatient
Parent: MyPatient
Description: "An example profile of the Patient resource."
* identifier ^slicing.discriminator[+].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.discriminator[+].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open

Instance: DerivedPatientEx
InstanceOf: MyDerivedPatient
* active = true
* identifier.value = "123"