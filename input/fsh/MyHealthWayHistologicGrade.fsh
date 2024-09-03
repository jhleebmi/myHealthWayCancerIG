Alias: $loinc = http://loinc.org
Alias: $us-core-observation-lab = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Alias: $mcode-related-condition = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition
Alias: $mcode-cancer-patient = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
Alias: $mcode-human-specimen = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-human-specimen
Alias: $mcode-histologic-grade-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-histologic-grade-vs
Alias: $mcode-histologic-grading-system-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-histologic-grading-system-vs

Profile:        MyHealthWayHistologicGrade
Parent:         MyHealthWayObservationProfileLaboratoryResult
Id:             myhealthway-cancer-histologic-grade
Title:          "MyHealthWay Cancer Histologic Grade"
Description:    "Histologic grade determined from examination of tumor sample."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.23"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* extension contains $mcode-related-condition named relatedCondition 0..* MS
* extension[relatedCondition] ^short = "Condition associated with this test."
* extension[relatedCondition] ^definition = "Associates the histologic grade test with a condition, if one exists. Condition can be given by a reference or a code."
* code = $loinc#33732-9
* subject ^definition = "Patient whose test result is recorded."
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $mcode-histologic-grade-vs (extensible)
* value[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type.extension.valueBoolean = true
* method MS
* method from $mcode-histologic-grading-system-vs (extensible)
* specimen only Reference($mcode-human-specimen)
* specimen MS

Mapping: MyHealthWayHistologicGrade-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayHistologicGrade
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayHistologicGrade-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayHistologicGrade
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayHistologicGrade-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayHistologicGrade
Target: "http://hl7.org/v2"

Mapping: MyHealthWayHistologicGrade-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayHistologicGrade
Target: "http://hl7.org/v3"

Mapping: MyHealthWayHistologicGrade-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayHistologicGrade
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayHistologicGrade-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayHistologicGrade
Target: "http://snomed.org/attributebinding"