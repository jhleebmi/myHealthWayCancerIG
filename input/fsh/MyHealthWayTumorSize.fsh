Alias: $loinc = http://loinc.org
Alias: $mcode-cancer-patient = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
Alias: $mcode-tumor = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor
Alias: $mcode-human-specimen = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-human-specimen
Alias: $mcode-tumor-size-method-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tumor-size-method-vs
Alias: $mcode-tumor-size-units-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tumor-size-units-vs

Profile:        MyHealthWayTumorSize
Parent:         MyHealthWayObservationProfileLaboratoryResult
Id:             myhealthway-cancer-tumor-size
Title:          "MyHealthWay Cancer Tumor Size Profile"
Description:    "Records the dimensions of a tumor"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #cic
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.63"
* ^version = "4.0.0-ballot"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* obeys must-have-focus-or-specimen-invariant
* code = $loinc#21889-1
* code MS
* subject 1.. MS
* subject ^short = "The patient whose tumor was measured."
* subject ^definition = "The patient whose tumor was measured. SHALL be a `Patient` resource conforming to `CancerPatient`."
* focus ..1 MS
* focus only Reference($mcode-tumor)
* focus ^short = "Identifies a tumor that has NOT been removed from the body"
* focus ^definition = "Reference to a BodyStructure resource conforming to Tumor."
* focus ^comment = "Use **only** when the tumor **has not** been removed from the body. If the tumor has been removed, use `specimen` instead and leave `focus` empty."
* effective[x] MS
* value[x] ^short = "Not used in this profile"
* value[x] ^definition = "Not used in this profile"
* method MS
* method from $mcode-tumor-size-method-vs (extensible)
* method ^short = "Method for measuring the tumor"
* method ^definition = "Method for measuring the tumor"
* method ^comment = "Tumors are typically measured via gross pathology after excision, or via diagnostic imaging or physical exam prior to removal. If `specimen` is set, `method` is expected to be a \"gross pathology\" code. If `focus` is set, `method` is expected to be a type of diagnostic imaging or physical exam."
* specimen only Reference($mcode-human-specimen)
* specimen MS
* specimen ^short = "Identifies a tumor that has been removed from the body"
* specimen ^definition = "Reference to a Specimen resource consistent with HumanSpecimen with type = http://terminology.hl7.org/CodeSystem/v2-0487#TUMOR."
* specimen ^comment = "Use specimen **only** when the tumor **has** been removed from the body. If the tumor has been not removed, use `focus` instead and leave `specimen` empty."
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.description = "Slice based on the component.code pattern"
* component ^slicing.rules = #open
* component contains
    tumorLongestDimension 1..1 MS and
    tumorOtherDimension 0..2 MS
* component[tumorLongestDimension] ^short = "Longest tumor dimension (cm or mm)"
* component[tumorLongestDimension] ^definition = "The longest tumor dimension in cm or mm."
* component[tumorLongestDimension].code = $loinc#33728-7
* component[tumorLongestDimension].code MS
* component[tumorLongestDimension].value[x] only Quantity
* component[tumorLongestDimension].value[x] MS
* component[tumorLongestDimension].value[x] from $mcode-tumor-size-units-vs (required)
* component[tumorOtherDimension] ^short = "2nd or 3rd tumor dimension (cm or mm)"
* component[tumorOtherDimension] ^definition = "The second or third tumor dimension in cm or mm."
* component[tumorOtherDimension] ^comment = "Additional tumor dimensions should be ordered from largest to smallest."
* component[tumorOtherDimension].code = $loinc#33729-5
* component[tumorOtherDimension].code MS
* component[tumorOtherDimension].value[x] only Quantity
* component[tumorOtherDimension].value[x] MS
* component[tumorOtherDimension].value[x] from $mcode-tumor-size-units-vs (required)

Invariant: must-have-focus-or-specimen-invariant
Description: "Either `focus` OR `specimen` MUST be populated"
* severity = #error
* expression = "(focus.exists() or specimen.exists()) and (focus.exists() and specimen.exists()).not()"