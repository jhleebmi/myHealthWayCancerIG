Alias: $loinc = http://loinc.org
Alias: $us-core-observation-clinical-test = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-test
Alias: $mcode-cancer-patient = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
Alias: $LL4986-7 = http://loinc.org/vs/LL4986-7

Profile:        MyHealthWayKarnofskyPerformanceStatus
Parent:         MyHealthWayObservationProfileLaboratoryResult
Id:             myhealthway-cancer-karnofsky-performance-status
Title:          "MyHealthWay Cancer Karnofsky Performance Status Profile"
Description:    "The Karnofsky Performance Status (KPS) is a tool used to measure a patient's functional status. It can be used to compare the effectiveness of different therapies and to help assess the prognosis of certain patients, such as those with certain cancers. The KPS score ranges from 0 to 100 in intervals of 10. Higher scores are associated with better functional status, with 100 representing no symptoms or evidence of disease, and 0 representing death."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.27"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* basedOn only Reference(ServiceRequest or CarePlan)
* partOf only Reference(Procedure)
* code = $loinc#89243-0
* subject ^definition = "Patient whose performance status is recorded."
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* value[x] only integer
* interpretation MS
* interpretation from $LL4986-7 (required)
* bodySite ^short = "Not used in this profile"
* bodySite ^definition = "Not used in this profile"
* specimen ^short = "Not used in this profile"
* specimen ^definition = "Not used in this profile"
* device ^short = "Not used in this profile"
* device ^definition = "Not used in this profile"
* hasMember ^short = "Not used in this profile"
* hasMember ^definition = "Not used in this profile"
* component ^short = "Not used in this profile"
* component ^definition = "Not used in this profile"

Mapping: MyHealthWayKarnofskyPerformanceStatus-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayKarnofskyPerformanceStatus
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayKarnofskyPerformanceStatus-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayKarnofskyPerformanceStatus
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayKarnofskyPerformanceStatus-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayKarnofskyPerformanceStatus
Target: "http://hl7.org/v2"

Mapping: MyHealthWayKarnofskyPerformanceStatus-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayKarnofskyPerformanceStatus
Target: "http://hl7.org/v3"

Mapping: MyHealthWayKarnofskyPerformanceStatus-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayKarnofskyPerformanceStatus
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayKarnofskyPerformanceStatus-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayKarnofskyPerformanceStatus
Target: "http://snomed.org/attributebinding"