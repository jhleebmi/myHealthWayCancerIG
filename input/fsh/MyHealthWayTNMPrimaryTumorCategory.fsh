Alias: $mcode-tnm-category = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category
Alias: $mcode-tnm-primary-tumor-staging-type-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-primary-tumor-staging-type-vs
Alias: $mcode-tnm-primary-tumor-category-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-primary-tumor-category-vs

Profile:        MyHealthWayTNMPrimaryTumorCategory
Parent:         MyHealthWayObservationProfileLaboratoryResult
Id:             myhealthway-cancer-tnm-primary-tumor-category
Title:          "MyHealthWay Cancer TNM Primary Tumor Category Profile"
Description:    "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.57"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code from $mcode-tnm-primary-tumor-staging-type-vs (preferred)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
* code ^binding.extension.valueCanonical = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-primary-tumor-staging-type-max-vs"
* value[x] from $mcode-tnm-primary-tumor-category-vs (preferred)
* value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
* value[x] ^binding.extension.valueCanonical = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-primary-tumor-category-max-vs"

Mapping: MyHealthWayTNMPrimaryTumorCategory-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayTNMPrimaryTumorCategory
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayTNMPrimaryTumorCategory-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayTNMPrimaryTumorCategory
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayTNMPrimaryTumorCategory-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayTNMPrimaryTumorCategory
Target: "http://hl7.org/v2"

Mapping: MyHealthWayTNMPrimaryTumorCategory-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayTNMPrimaryTumorCategory
Target: "http://hl7.org/v3"

Mapping: MyHealthWayTNMPrimaryTumorCategory-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayTNMPrimaryTumorCategory
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayTNMPrimaryTumorCategory-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayTNMPrimaryTumorCategory
Target: "http://snomed.org/attributebinding"
