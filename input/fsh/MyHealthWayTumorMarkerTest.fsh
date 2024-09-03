Alias: $us-core-observation-lab = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Alias: $mcode-related-condition = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition
Alias: $mcode-cancer-patient = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
Alias: $mcode-human-specimen = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-human-specimen
Alias: $mcode-tumor-marker-test-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tumor-marker-test-vs

Profile:        MyHealthWayTumorMarkerTest
Parent:         MyHealthWayObservationProfileLaboratoryResult
Id:             myhealthway-cancer-tumor-marker-test
Title:          "MyHealthWay Cancer Tumor Marker Test Profile"
Description:    "The result of a tumor marker test. Tumor marker tests are generally used to guide cancer treatment decisions and monitor treatment, as well as to predict the chance of recovery and cancer recurrence."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.61"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* extension contains $mcode-related-condition named relatedCondition 0..* MS
* extension[relatedCondition] ^short = "Condition associated with this test."
* extension[relatedCondition] ^definition = "Associates the tumor marker test with a condition, if one exists. Condition can be given by a reference or a code. In the case of a screening test such as prostate-specific antigen (PSA), there may be no existing condition to reference."
* code from $mcode-tumor-marker-test-vs (extensible)
* subject ^definition = "Patient whose test result is recorded."
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* value[x] 1..
* value[x] only Quantity or CodeableConcept or string or Ratio
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* specimen only Reference($mcode-human-specimen)
* specimen MS

Mapping: MyHealthWayTumorMarkerTest-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayTumorMarkerTest
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayTumorMarkerTest-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayTumorMarkerTest
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayTumorMarkerTest-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayTumorMarkerTest
Target: "http://hl7.org/v2"

Mapping: MyHealthWayTumorMarkerTest-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayTumorMarkerTest
Target: "http://hl7.org/v3"

Mapping: MyHealthWayTumorMarkerTest-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayTumorMarkerTest
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayTumorMarkerTest-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayTumorMarkerTest
Target: "http://snomed.org/attributebinding"