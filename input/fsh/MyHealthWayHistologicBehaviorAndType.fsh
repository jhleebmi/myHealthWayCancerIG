Alias: $loinc = http://loinc.org
Alias: $us-core-observation-lab = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Alias: $mcode-related-condition = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition
Alias: $mcode-cancer-patient = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
Alias: $mcode-human-specimen = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-human-specimen
Alias: $mcode-histologic-behavior-and-type-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-histologic-behavior-and-type-vs

Profile:        MyHealthWayHistologicBehaviorAndType
Parent:         MyHealthWayObservationProfileLaboratoryResult
Id:             myhealthway-cancer-histologic-behavior-and-type
Title:          "MyHealthWay Cancer Histologic Behavior and Type"
Description:    "Histologic behavior and type determined from examination of tumor sample. ICD-O-3 morphology codes are referenced in the logical definition but not expanded in the value set for intellectual property reasons. For primary cancers, the ICD-O-3 behavior suffix should be /1, /2, or /3. For secondary cancers, the ICD-O-3 behavior suffix should be /6. "
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.22"
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
* code = $loinc#31206-6
* subject ^definition = "Patient whose test result is recorded."
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $mcode-histologic-behavior-and-type-vs (extensible)
* value[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type.extension.valueBoolean = true
* specimen only Reference($mcode-human-specimen)
* specimen MS

Mapping: MyHealthWayHistologicBehaviorAndType-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayHistologicBehaviorAndType
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayHistologicBehaviorAndType-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayHistologicBehaviorAndType
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayHistologicBehaviorAndType-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayHistologicBehaviorAndType
Target: "http://hl7.org/v2"

Mapping: MyHealthWayHistologicBehaviorAndType-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayHistologicBehaviorAndType
Target: "http://hl7.org/v3"

Mapping: MyHealthWayHistologicBehaviorAndType-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayHistologicBehaviorAndType
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayHistologicBehaviorAndType-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayHistologicBehaviorAndType
Target: "http://snomed.org/attributebinding"