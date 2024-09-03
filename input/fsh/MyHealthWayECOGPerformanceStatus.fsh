Alias: $loinc = http://loinc.org
Alias: $us-core-observation-clinical-test = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-test
Alias: $mcode-cancer-patient = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
Alias: $LL529-9 = http://loinc.org/vs/LL529-9

Profile:        MyHealthWayECOGPerformanceStatus
Parent:         MyHealthWayObservationProfileExam
Id:             myhealthway-cancer-ecog-performance-status
Title:          "MyHealthWay Cancer ECOG Performance Status Profile"
Description:    "The Eastern Cooperative Oncology Group (ECOG) Performance Status represents the patient's functional status and is used to determine their ability to tolerate therapies in serious illness, specifically for chemotherapy. (Definition from: [LOINC](https://loinc.org/89262-0/))"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.17"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* basedOn only Reference(ServiceRequest or CarePlan)
* partOf only Reference(Procedure)
* code = $loinc#89247-1
* subject ^definition = "Patient whose performance status is recorded."
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* value[x] only integer
* interpretation MS
* interpretation from $LL529-9 (required)
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

Mapping: MyHealthWayECOGPerformanceStatus-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayECOGPerformanceStatus
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayECOGPerformanceStatus-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayECOGPerformanceStatus
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayECOGPerformanceStatus-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayECOGPerformanceStatus
Target: "http://hl7.org/v2"

Mapping: MyHealthWayECOGPerformanceStatus-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayECOGPerformanceStatus
Target: "http://hl7.org/v3"

Mapping: MyHealthWayECOGPerformanceStatus-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayECOGPerformanceStatus
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayECOGPerformanceStatus-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayECOGPerformanceStatus
Target: "http://snomed.org/attributebinding"