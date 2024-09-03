Alias: $mcode-cancer-stage = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage
Alias: $mcode-tnm-stage-group-staging-type-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-stage-group-staging-type-vs
Alias: $mcode-tnm-stage-group-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-stage-group-vs
Alias: $mcode-tnm-staging-method-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-staging-method-vs

Profile:        MyHealthWayTNMStageGroup
Parent:         MyHealthWayObservationProfileLaboratoryResult
Id:             myhealthway-cancer-tnm-stage-group
Title:          "MyHealthWay Cancer TNM Stage Group Profile"
Description:    "Reporting of the stage group representing the overall extent of a cancer, based on AJCC staging guidelines."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.59"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code from $mcode-tnm-stage-group-staging-type-vs (preferred)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
* code ^binding.extension.valueCanonical = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-stage-group-staging-type-max-vs"
* focus 1..1
* value[x] from $mcode-tnm-stage-group-vs (preferred)
* value[x] ^short = "The stage group"
* value[x] ^definition = "The overall cancer stage, such as stage group IIA."
* value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
* value[x] ^binding.extension.valueCanonical = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-stage-group-max-vs"
* method 1..
* method from $mcode-tnm-staging-method-vs (extensible)
* hasMember MS
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "$this.resolve()"
* hasMember ^slicing.description = "Slicing based on profile conformance of the referenced resource."
* hasMember ^slicing.rules = #open
* hasMember ^short = "Element containing the T, N, and M categories as references to separate T, N, M observations. The referenced resources are observations leading to the Stage Group reported in the current resource."
* hasMember contains TNMCategory 0..3 MS
* component ^short = "Not used in this profile"
* component ^definition = "Not used in this profile"

Mapping: MyHealthWayTNMStageGroup-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayTNMStageGroup
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayTNMStageGroup-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayTNMStageGroup
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayTNMStageGroup-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayTNMStageGroup
Target: "http://hl7.org/v2"

Mapping: MyHealthWayTNMStageGroup-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayTNMStageGroup
Target: "http://hl7.org/v3"

Mapping: MyHealthWayTNMStageGroup-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayTNMStageGroup
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayTNMStageGroup-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayTNMStageGroup
Target: "http://snomed.org/attributebinding"