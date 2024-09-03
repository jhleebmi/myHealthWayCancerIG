Alias: $Thesaurus.owl = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl
Alias: $us-core-observation-clinical-test = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-test
Alias: $mcode-cancer-patient = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
Alias: $mcode-lansky-play-performance-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-lansky-play-performance-vs

Profile:        MyHealthWayLanskyPlayPerformanceStatus
Parent:         MyHealthWayObservationProfileLaboratoryResult
Id:             myhealthway-cancer-lanskyplay-performance-status
Title:          "MyHealthWay Cancer Lansky Play Performance Status Profile"
Description:    "The Lansky Play-Performance Status for children is a parent-rated instrument which records usual play activity as the index of performance. It is similar to the Karnofsky Performance Scale for adults (Definition from: [NCI Thesaurus](https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&code=C38144&ns=ncit))."
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.28"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* basedOn only Reference(ServiceRequest or CarePlan)
* partOf only Reference(Procedure)
* code = $Thesaurus.owl#C38144
* subject ^definition = "Patient whose performance status is recorded."
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* value[x] only integer
* interpretation MS
* interpretation from $mcode-lansky-play-performance-vs (extensible)
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

Mapping: MyHealthWayLanskyPlayPerformanceStatus-workflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayLanskyPlayPerformanceStatus
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayLanskyPlayPerformanceStatus-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayLanskyPlayPerformanceStatus
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayLanskyPlayPerformanceStatus-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayLanskyPlayPerformanceStatus
Target: "http://hl7.org/v2"

Mapping: MyHealthWayLanskyPlayPerformanceStatus-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayLanskyPlayPerformanceStatus
Target: "http://hl7.org/v3"

Mapping: MyHealthWayLanskyPlayPerformanceStatus-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayLanskyPlayPerformanceStatus
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayLanskyPlayPerformanceStatus-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayLanskyPlayPerformanceStatus
Target: "http://snomed.org/attributebinding"