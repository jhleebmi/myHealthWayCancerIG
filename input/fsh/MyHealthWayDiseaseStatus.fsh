Alias: $loinc = http://loinc.org
Alias: $mcode-cancer-disease-status-evidence-type = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status-evidence-type
Alias: $mcode-cancer-patient = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
Alias: $us-core-condition-problems-health-concerns = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Alias: $mcode-tumor = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor
Alias: $mcode-radiotherapy-volume = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $mcode-condition-status-trend-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-condition-status-trend-vs

Profile:        MyHealthWayCancerDiseaseStatus
Parent:         MyHealthWayObservationProfileExam
Id:             myhealthway-cancer-disease-status
Title:          "MyHealthWay Cancer Disease Status Profile"
Description:    "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #cic
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.6"
* ^version = "4.0.0-ballot"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* extension contains $mcode-cancer-disease-status-evidence-type named evidenceType 0..* MS
* status MS
* code = $loinc#97509-4
* code MS
* subject 1.. MS
* subject ^definition = "Patient whose disease status is recorded."
* focus MS
* effective[x] only dateTime
* effective[x] MS
* value[x] only CodeableConcept
* value[x] MS
* value[x] from $mcode-condition-status-trend-vs (preferred)
* value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
* value[x] ^binding.extension.valueCanonical = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-condition-status-trend-max-vs"
* specimen ^short = "Not used in this profile"
* specimen ^definition = "Not used in this profile"
* device ^short = "Not used in this profile"
* device ^definition = "Not used in this profile"
* referenceRange ^short = "Not used in this profile"
* referenceRange ^definition = "Not used in this profile"
* hasMember ^short = "Not used in this profile"
* hasMember ^definition = "Not used in this profile"
* component ^short = "Not used in this profile"
* component ^definition = "Not used in this profile"