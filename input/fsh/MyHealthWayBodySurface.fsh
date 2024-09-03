Alias:   SCT = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $us-core-vital-signs = http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs

Profile:        MyHealthWayBodySurface
Parent:         MyHealthWayObservationProfileExam
Id:             myhealthway-cancer-bodysurface
Title:          "MyHealthWay Cancer Body Surface Profile"
Description:    "MyHealthWay Cancer Body Surface Profile"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.4"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#8277-6
* value[x] only Quantity
* value[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type.extension.valueBoolean = true


Mapping: MyHealthWayBodySurfaceworkflow
Id: workflow
Title: "Workflow Pattern"
Source: MyHealthWayBodySurface
Target: "http://hl7.org/fhir/workflow"

Mapping: MyHealthWayBodySurface-sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: MyHealthWayBodySurface
Target: "http://snomed.info/conceptdomain"

Mapping: MyHealthWayBodySurface-v2
Id: v2
Title: "HL7 v2 Mapping"
Source: MyHealthWayBodySurface
Target: "http://hl7.org/v2"

Mapping: MyHealthWayBodySurface-rim
Id: rim
Title: "RIM Mapping"
Source: MyHealthWayBodySurface
Target: "http://hl7.org/v3"

Mapping: MyHealthWayBodySurface-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MyHealthWayBodySurface
Target: "http://hl7.org/fhir/fivews"

Mapping: MyHealthWayBodySurface-sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: MyHealthWayBodySurface
Target: "http://snomed.org/attributebinding"