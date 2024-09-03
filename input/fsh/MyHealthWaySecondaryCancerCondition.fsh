Alias: $us-core-condition-problems-health-concerns = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Alias: $mcode-histology-morphology-behavior = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior
Alias: $mcode-primary-cancer-condition = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition
Alias: $mcode-body-location-qualifier = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier
Alias: $mcode-laterality-qualifier = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier
Alias: $mcode-secondary-cancer-disorder-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-secondary-cancer-disorder-vs
Alias: $mcode-cancer-body-location-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-cancer-body-location-vs
Alias: $mcode-cancer-disease-status-evidence-type-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-cancer-disease-status-evidence-type-vs

Profile:        MyHealthWaySecondaryCancerCondition
Parent:         MyHealthWayConditionProfile
Id:             myhealthway-cancer-secondary-cancer-condition
Title:          "MyHealthWay Cancer Secondary Cancer Condition Profile"
Description:    "Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms)."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.54"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* extension MS
* extension contains
    $mcode-histology-morphology-behavior named histologyMorphologyBehavior 0..1 MS and
    ConditionRelated named relatedPrimaryCancerCondition 0..1 MS
* extension[relatedPrimaryCancerCondition] ^short = "Related Primary Cancer Condition"
* extension[relatedPrimaryCancerCondition] ^definition = "A reference to the primary cancer condition that provides context for this resource."
* code from $mcode-secondary-cancer-disorder-vs (extensible)
* bodySite MS
* bodySite from $mcode-cancer-body-location-vs (extensible)
* bodySite.extension contains
    $mcode-body-location-qualifier named locationQualifier 0..* MS and
    $mcode-laterality-qualifier named lateralityQualifier 0..1 MS
* bodySite.extension[locationQualifier] ^short = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[locationQualifier] ^definition = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[lateralityQualifier] ^short = "Laterality qualifier for this bodySite"
* bodySite.extension[lateralityQualifier] ^definition = "Laterality qualifier for this bodySite"
* stage ^short = "Not used in this profile"
* stage ^definition = "Not used in this profile"
* evidence.code from $mcode-cancer-disease-status-evidence-type-vs (required)
* evidence.code ^orderMeaning = "If more than one code or Reference is present, it is interpreted as the the physician's declaration of how the cancer was diagnosed, with the most invasive method first (e.g., autopsy/histopathology, cytology, radiology, physicial exam, etc.)"

Mapping: MyHealthWaySecondaryCancerCondition-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWaySecondaryCancerCondition
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWaySecondaryCancerCondition-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWaySecondaryCancerCondition
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWaySecondaryCancerCondition-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWaySecondaryCancerCondition
Target: "http://hl7.org/v2"

Mapping: MyHealthWaySecondaryCancerCondition-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWaySecondaryCancerCondition
Target: "http://hl7.org/v3"

Mapping: MyHealthWaySecondaryCancerCondition-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWaySecondaryCancerCondition
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWaySecondaryCancerCondition-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWaySecondaryCancerCondition
Target: "http://snomed.org/attributebinding"