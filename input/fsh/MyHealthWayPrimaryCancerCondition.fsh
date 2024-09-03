Alias: $us-core-condition-problems-health-concerns = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Alias: $mcode-histology-morphology-behavior = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior
Alias: $mcode-body-location-qualifier = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier
Alias: $mcode-laterality-qualifier = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier
Alias: $mcode-cancer-stage = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage
Alias: $mcode-primary-cancer-disorder-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-cancer-disorder-vs
Alias: $mcode-cancer-body-location-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-cancer-body-location-vs
Alias: $mcode-cancer-staging-method-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-cancer-staging-method-vs
Alias: $mcode-cancer-disease-status-evidence-type-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-cancer-disease-status-evidence-type-vs

Profile:        MyHealthWayPrimaryCancerCondition
Parent:         MyHealthWayConditionProfile
Id:             myhealthway-cancer-primary-cancer-condition
Title:          "MyHealthWay Cancer Primary Cancer Condition Profile"
Description:    "Records the the primary cancer condition, the original or first neoplasm in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.40"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* extension MS
* extension contains $mcode-histology-morphology-behavior named histologyMorphologyBehavior 0..1 MS
* code from $mcode-primary-cancer-disorder-vs (extensible)
* bodySite MS
* bodySite from $mcode-cancer-body-location-vs (extensible)
* bodySite.extension contains
    $mcode-body-location-qualifier named locationQualifier 0..* MS and
    $mcode-laterality-qualifier named lateralityQualifier 0..1 MS
* bodySite.extension[locationQualifier] ^short = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[locationQualifier] ^definition = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[lateralityQualifier] ^short = "Laterality qualifier for this bodySite"
* bodySite.extension[lateralityQualifier] ^definition = "Laterality qualifier for this bodySite"
* stage MS
* stage.summary ^short = "Stage at time of last staging."
* stage.summary ^definition = "Most recent overall cancer stage, such as stage group IIA in TNM staging. More detailed staging information (such as the individual T, N, and M categories) SHOULD be captured in a separate Observation resource, referenced by stage.assessment, conforming to CancerStage profile."
* stage.assessment only Reference($mcode-cancer-stage)
* stage.assessment MS
* stage.type from $mcode-cancer-staging-method-vs (extensible)
* stage.type ^short = "The type of stage Staging system or method used."
* stage.type ^definition = "The type of stage reported in stage.summary, or the staging method used to arrive at the stage.summary value."
* evidence.code from $mcode-cancer-disease-status-evidence-type-vs (required)
* evidence.code ^orderMeaning = "If more than one code or Reference is present, it is interpreted as the the physician's declaration of how the cancer was diagnosed, with the most invasive method first (e.g., autopsy/histopathology, cytology, radiology, physicial exam, etc.)"

Mapping: MyHealthWayPrimaryCancerCondition-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayPrimaryCancerCondition
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayPrimaryCancerCondition-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayPrimaryCancerCondition
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayPrimaryCancerCondition-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayPrimaryCancerCondition
Target: "http://hl7.org/v2"

Mapping: MyHealthWayPrimaryCancerCondition-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayPrimaryCancerCondition
Target: "http://hl7.org/v3"

Mapping: MyHealthWayPrimaryCancerCondition-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayPrimaryCancerCondition
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayPrimaryCancerCondition-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayPrimaryCancerCondition
Target: "http://snomed.org/attributebinding"