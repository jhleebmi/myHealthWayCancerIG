Alias: $mcode-history-of-metastatic-malignant-neoplasm-vs = http://hl7.org/fhir/us/mcode/ValueSet/mcode-history-of-metastatic-malignant-neoplasm-vs

Profile:        MyHealthWayHistoryOfMetastaticCancer
Parent:         MyHealthWayObservationProfileExam
Id:             myhealthway-cancer-history-of-mstastatic-cancer
Title:          "MyHealthWay Cancer History of Metastatic Cancer"
Description:    "Records the existence of a past episode of metastatic cancer, for the purpose of long term management and tracking."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #cic
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.15.42.25"
* ^version = "4.0.0-ballot"
* ^publisher = "HL7 International / Clinical Interoperability Council"
* ^contact.name = "HL7 International / Clinical Interoperability Council"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "ciclist@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code from $mcode-history-of-metastatic-malignant-neoplasm-vs (extensible)
* value[x] only boolean
* value[x] MS ?!
* value[x] ^isModifierReason = "When value is false, the resource semantics are reversed and the resource represents an assertion of NO history of metastatic cancer (either absolutely, or of the type indicated by Observation.code)"