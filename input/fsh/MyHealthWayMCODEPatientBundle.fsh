// No corresponding MyHealthWay profile for Paient Bundle

Alias:   SCT = http://snomed.info/sct

Profile:        MyHealthWayPatientBundle
Parent:         MCODEPatientBundle
Id:             myhealthway-cancer-mcode-paient-bundle
Title:          "MyHealthWay Cancer Patient Bundle Profile"
Description:    "A collection of data for an mCODE cancer patient."

// Extension:  MyHealthWayCancerExtension
// Id: myhealthway-cancer-extension
// Title: "MyHealthWayCancerExtension"
// Description: "MyHealthWayCancerExtension."
// * value[x] only CodeableConcept
// * valueCodeableConcept from MyHealthWayCancerValueSet (extensible)

// ValueSet:  MyHealthWayCancerValueSet
// Id: myhealthway-cancer-value-set
// Title: "MyHealthWayCancerValueSet"
// Description:  "MyHealthWayCancerValueSet."
// * codes from system SCT where concept is-a #90580008  "Fish (organism)"

// Instance: ExampleBodySurface
// InstanceOf: MyHealthWayCancerBodySurfaceProfile
// * name.given = "ExampleBodySurface"
// * name.family = "ExampleBodySurface"
// * extension[FishSpecies].valueCodeableConcept =  SCT#47978005 "Carpiodes cyprinus (organism)"
