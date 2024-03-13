CodeSystem: MaritalStatus
Id: marital-status--3.0.0
Title: "MaritalStatus"
Description: """\* \* \* No description supplied \* \* \*

*Open Issue:* The specific meanings of these codes can vary somewhat by jurisdiction and implementation so caution should be used when determining equivalency.

*Open Issue:* fixing and completion of the hierarchy and proper good definitions of all the concepts is badly needed."""
* ^language = #en
* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/web-source"
* ^extension[=].valueUrl = "https://termx.taltech.ee/fhir/ValueSet/marital-status"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeRepresentationLevel"
* ^extension[=].valueCode = #executable
* ^url = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.5.2"
* ^version = "3.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "Health Level Seven International"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7.org"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "hq@HL7.org"
* ^copyright = "This material derives from the HL7 Terminology THO. THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: https://terminology.hl7.org/license"
* ^effectivePeriod.start = "2024-03-12T00:00:00Z"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^content = #complete
* ^property[0].code = #Generalizes
* ^property[=].description = "Inverse of Specializes.  Only included as a derived relationship."
* ^property[=].type = #Coding
* ^property[+].code = #Specializes
* ^property[=].description = "The child code is a more narrow version of the concept represented by the parent code.  I.e. Every child concept is also a valid parent concept.  Used to allow determination of subsumption.  Must be transitive, irreflexive, antisymmetric."
* ^property[=].type = #Coding
* ^property[+].code = #definition
* ^property[=].description = "Definition"
* ^property[=].type = #string
* ^property[+].code = #display
* ^property[=].uri = "http://terminology.hl7.org/CodeSystem/designation-usage|display"
* ^property[=].description = "Display"
* ^property[=].type = #string
* ^property[+].code = #internalId
* ^property[=].uri = "http://terminology.hl7.org/CodeSystem/utg-concept-properties#v3-internal-id"
* ^property[=].description = "The internal identifier for the concept in the HL7 Access database repository."
* ^property[=].type = #code
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "Status"
* ^property[=].type = #code
* #A "Annulled" "Marriage contract has been declared null and to not have existed"
* #A ^property[0].code = #status
* #A ^property[=].valueCode = #active
* #A ^property[+].code = #internalId
* #A ^property[=].valueCode = #12213
* #D "Divorced" "Marriage contract has been declared dissolved and inactive"
* #D ^property[0].code = #status
* #D ^property[=].valueCode = #active
* #D ^property[+].code = #internalId
* #D ^property[=].valueCode = #12214
* #I "Interlocutory" "Subject to an Interlocutory Decree."
* #I ^property[0].code = #status
* #I ^property[=].valueCode = #active
* #I ^property[+].code = #internalId
* #I ^property[=].valueCode = #12215
* #L "Legally Separated"
* #L ^property[0].code = #status
* #L ^property[=].valueCode = #active
* #L ^property[+].code = #internalId
* #L ^property[=].valueCode = #12216
* #M "Married" "A current marriage contract is active"
* #M ^property[0].code = #status
* #M ^property[=].valueCode = #active
* #M ^property[+].code = #internalId
* #M ^property[=].valueCode = #12217
* #M #C "Common Law" "a marriage recognized in some jurisdictions and based on the parties' agreement to consider themselves married and can also be based on documentation of cohabitation.\r\n\r\nThis definition was based on https://www.merriam-webster.com/dictionary/common-law%20marriage."
* #M #C ^property[0].code = #status
* #M #C ^property[=].valueCode = #active
* #M #C ^property[+].code = #internalId
* #M #C ^property[=].valueCode = #24122
* #P "Polygamous" "More than 1 current spouse"
* #P ^property[0].code = #status
* #P ^property[=].valueCode = #active
* #P ^property[+].code = #internalId
* #P ^property[=].valueCode = #12220
* #T "Domestic partner" "Person declares that a domestic partner relationship exists."
* #T ^property[0].code = #status
* #T ^property[=].valueCode = #active
* #T ^property[+].code = #internalId
* #T ^property[=].valueCode = #15981
* #U "unmarried" "Currently not in a marriage contract."
* #U ^property[0].code = #status
* #U ^property[=].valueCode = #active
* #U ^property[+].code = #internalId
* #U ^property[=].valueCode = #23624
* #U #S "Never Married" "No marriage contract has ever been entered"
* #U #S ^property[0].code = #status
* #U #S ^property[=].valueCode = #active
* #U #S ^property[+].code = #internalId
* #U #S ^property[=].valueCode = #12218
* #W "Widowed" "The spouse has died"
* #W ^property[0].code = #status
* #W ^property[=].valueCode = #active
* #W ^property[+].code = #internalId
* #W ^property[=].valueCode = #12219