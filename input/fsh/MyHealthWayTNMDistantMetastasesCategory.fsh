Alias: $mcode-tnm-category = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category
Alias: $mcode-tnm-distant-metastases-staging-type-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-distant-metastases-staging-type-vs
Alias: $mcode-tnm-distant-metastases-category-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-distant-metastases-category-vs

Profile:        MyHealthWayTNMDistantMetastasesCategory
Parent:         MyHealthWayObservationProfileLaboratoryResult
Id:             myhealthway-cancer-tnm-distant-metastases-category
Title:          "MyHealthWay Cancer TNM Distant Metastases Category Profile"
Description:    "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.56"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code from $mcode-tnm-distant-metastases-staging-type-vs (preferred)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
* code ^binding.extension.valueCanonical = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-distant-metastases-staging-type-max-vs"
* value[x] from $mcode-tnm-distant-metastases-category-vs (preferred)
* value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
* value[x] ^binding.extension.valueCanonical = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-distant-metastases-category-max-vs"

Mapping: MyHealthWayTNMDistantMetastasesCategory-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayTNMDistantMetastasesCategory
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayTNMDistantMetastasesCategory-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayTNMDistantMetastasesCategory
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayTNMDistantMetastasesCategory-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayTNMDistantMetastasesCategory
Target: "http://hl7.org/v2"

Mapping: MyHealthWayTNMDistantMetastasesCategory-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayTNMDistantMetastasesCategory
Target: "http://hl7.org/v3"

Mapping: MyHealthWayTNMDistantMetastasesCategory-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayTNMDistantMetastasesCategory
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayTNMDistantMetastasesCategory-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayTNMDistantMetastasesCategory
Target: "http://snomed.org/attributebinding"