Alias: $sct = http://snomed.info/sct
Alias: $us-core-procedure = http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Alias: $mcode-procedure-intent = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent
Alias: $mcode-treatment-termination-reason = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-termination-reason
Alias: $mcode-radiotherapy-modality-and-technique = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique
Alias: $mcode-radiotherapy-sessions = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions
Alias: $mcode-radiotherapy-dose-delivered-to-volume = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume
Alias: $mcode-cancer-patient = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
Alias: $us-core-condition-problems-health-concerns = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Alias: $mcode-body-location-qualifier = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier
Alias: $mcode-laterality-qualifier = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier
Alias: $mcode-treatment-termination-reason-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-treatment-termination-reason-vs
Alias: $mcode-cancer-disorder-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-cancer-disorder-vs
Alias: $mcode-radiotherapy-treatment-location-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-treatment-location-vs

Profile:        MyHealthWayRadiotherapyCourseSummary
Parent:         MyHealthWayProcedureProfile
Id:             myhealthway-cancer-radiotherapy-course-summary
Title:          "MyHealthWay Cancer Radiotherapy Course Summary Profile"
Description:    "A summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.43"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* obeys termination-reason-code-invariant and termination-reason-invariant and mcode-reason-required
* extension MS
* extension contains
    $mcode-procedure-intent named treatmentIntent 0..1 MS and
    $mcode-treatment-termination-reason named terminationReason 0..1 MS and
    $mcode-radiotherapy-modality-and-technique named modalityAndTechnique 0..* MS and
    $mcode-radiotherapy-sessions named actualNumberOfSessions 0..1 MS and
    $mcode-radiotherapy-dose-delivered-to-volume named doseDeliveredToVolume 0..* MS
* statusReason from $mcode-treatment-termination-reason-vs (preferred)
* code = $sct#1217123003
* subject ^definition = "The patient on whom the procedure was performed."
* reasonCode MS
* reasonCode from $mcode-cancer-disorder-vs (extensible)
* reasonReference MS
* bodySite MS
* bodySite from $mcode-radiotherapy-treatment-location-vs (extensible)
* bodySite ^short = "All body structure(s) treated"
* bodySite ^definition = "Coded body structure(s) treated in this course of radiotherapy. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension."
* bodySite.extension contains
    $mcode-body-location-qualifier named locationQualifier 0..* and
    $mcode-laterality-qualifier named lateralityQualifier 0..1
* bodySite.extension[locationQualifier] ^short = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[locationQualifier] ^definition = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[lateralityQualifier] ^short = "Laterality qualifier for this bodySite"
* bodySite.extension[lateralityQualifier] ^definition = "Laterality qualifier for this bodySite"

Invariant: termination-reason-code-invariant
Description: "When status is stopped, only certain statusReason values are allowed"
* severity = #error
* expression = "status = 'stopped' and statusReason.exists() and statusReason.coding.exists() implies statusReason.coding.exists(system = 'http://snomed.info/sct' and (code = '182992009' or code = '266721009' or code = '407563006' or code = '160932005' or code = '105480006' or code = '184081006' or code = '309846006' or code = '399307001' or code = '419620001' or code = '7058009' or code = '443729008' or code = '77386006'))"

Invariant: termination-reason-invariant
Description: "Certain statusReason values are allowed only when status is stopped"
* severity = #error
* expression = "statusReason.exists() and statusReason.coding.exists(\n      system = 'http://snomed.info/sct' and (code = '182992009' or code = '266721009' or code = '407563006' or code = '160932005' or\n code = '105480006' or code = '184081006' or code = '309846006' or code = '399307001' or  code = '419620001' or code = '7058009' or code = '443729008' or code = '77386006')) implies status = 'stopped'"

Invariant: mcode-reason-required
Description: "One of reasonCode or reasonReference SHALL be present"
* severity = #warning
* expression = "reasonCode.exists() or reasonReference.exists()"

Mapping: MyHealthWayRadiotherapyCourseSummary-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayRadiotherapyCourseSummary
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayRadiotherapyCourseSummary-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayRadiotherapyCourseSummary
Target: "http://hl7.org/v3"

Mapping: MyHealthWayRadiotherapyCourseSummary-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayRadiotherapyCourseSummary
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayRadiotherapyCourseSummary-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayRadiotherapyCourseSummary
Target: "http://hl7.org/v2"