Profile: ResultOrganizer
Parent: $Organizer
Id: ResultOrganizer
Title: "Result Organizer"
Description: """This template provides a mechanism for grouping result observations. It contains information applicable to all of the contained result observations. The Result Organizer code categorizes the contained results into one of several commonly accepted values (e.g., Hematology, Chemistry, Nuclear Medicine). 

If any Result Observation within the organizer has a statusCode of "active", the Result Organizer must also have a statusCode of "active". 

A specimen linked to a Result Organizer applies to all Result Observations. Centralizing specimen details within the Organizer is advised for clarity and consistency, as Result Observations typically relate to a single specimen collection, like using a purple top tube for CBCs. In cases of poor-quality specimens, a specimen reject reason is logically associated with the procedure, not the result, as there may be no result. The Result Organizer includes the specimen collection procedure, which may contain a reject reason.
"""

* insert LogicalModelTemplate(result-org, 2.16.840.1.113883.10.20.22.4.1, 2023-05-01)
* insert NarrativeLinkOrganizer

* ^status = #draft
* classCode 1..1
  * ^comment = "SHALL contain exactly one [1..1] @classCode (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:4537-7121)."
* moodCode 1..1
* moodCode = #EVN (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:4537-7122)."
* id 1..*
  * ^comment = "SHALL contain at least one [1..*] id (CONF:4537-7127)."
* code 1..1
  * obeys 4537-19218
  * ^short = "Laboratory results **SHOULD** be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or other constrained terminology named by the US Department of Health and Human Services Office of National Coordinator or other federal agency (CONF:4537-19219)."
  * ^comment = "SHALL contain exactly one [1..1] code (CONF:4537-7128)."
* statusCode 1..1
  * ^comment = "SHALL contain exactly one [1..1] statusCode (CONF:4537-7123)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.39 (required)
    * ^comment = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status urn:oid:2.16.840.1.113883.11.20.9.39 STATIC (CONF:4537-14848)."
* effectiveTime 0..1
  * ^short = "The effectiveTime is an interval that spans the effectiveTimes of the contained result observations. Because all contained result observations have a required time stamp, it is not required that this effectiveTime be populated."
  * ^comment = "MAY contain zero or one [0..1] effectiveTime (CONF:4537-31865)."
  * low 1..1
    * ^comment = "The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:4537-32488)."
  * high 1..1
    * ^comment = "The effectiveTime, if present, SHALL contain exactly one [1..1] high (CONF:4537-32489)."
* specimen 0..*
  * ^short = "When an organizer is for laboratory,  observations are expected to include the specimen participant. The specimen included at specimenPlayingEntity/code must be consistent with the observation/code."
  * ^comment = "MAY contain zero or more [0..*] specimen (CONF:4537-32615)."
  * specimenRole 1..1
    * ^comment = "The specimen, if present, SHALL contain exactly one [1..1] specimenRole (CONF:4537-32616)."
    * id 1..*
    * insert USCDI([[Specimen Identifier]])
    * specimenPlayingEntity 1..1
      * ^comment = "This specimenRole SHALL contain exactly one [1..1] specimenPlayingEntity (CONF:4537-32617)."
      * code 1..1
      * insert USCDI([[Specimen Type]])
      * code from $2.16.840.1.113762.1.4.1099.54 (preferred)
        * ^comment = "This specimenPlayingEntity SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Specimen type urn:oid:2.16.840.1.113762.1.4.1099.54 DYNAMIC (CONF:4537-32618)."
* obeys should-author
* author 0..*
* author only AuthorParticipation
  * ^comment = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:4537-31149)." // man-should
* component ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
  * ^comment = "SHALL contain at least one [1..*] component (CONF:4537-7124) such that it"
* component contains resultObs 1..* and specimenProc 0..1
* component[resultObs] ^short = "component"
  * ^comment = "SHALL contain at least one [1..*] component (CONF:4537-7124) such that it"
  * observation 1..1
  * observation only ResultObservation
    * ^comment = "SHALL contain exactly one [1..1] Result Observation (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.2:2015-08-01) (CONF:4537-14850)."
* component[specimenProc] ^comment = "SHOULD contain exactly one [0..1] component such that it"
  * ^comment = "SHALL contain at least one [1..*] component such that it"
  * procedure 1..1
  * procedure only SpecimenCollectionProcedure
    * ^comment = "SHALL contain exactly one [1..1] Specimen Collection Procedure."

Invariant: 4537-19218
Description: "**SHOULD** be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) **OR** SNOMED CT (codeSystem 2.16.840.1.113883.6.96), and **MAY** be selected from CPT (codeSystem 2.16.840.1.113883.6.12) (CONF:4537-19218)."
Severity: #warning
Expression: "codeSystem = '2.16.840.1.113883.6.1' or codeSystem = '2.16.840.1.113883.6.96'"
