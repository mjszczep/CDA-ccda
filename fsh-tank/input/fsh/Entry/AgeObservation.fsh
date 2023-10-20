Profile: AgeObservation
Parent: $Observation
Id: AgeObservation
Title: "Age Observation"
Description: "This Age Observation represents the subject's age at onset of an event or observation. The age of a relative in a Family History Observation at the time of that observation could also be inferred by comparing RelatedSubject/subject/birthTime with Observation/effectiveTime. However, a common scenario is that a patient will know the age of a relative when the relative had a certain condition or when the relative died, but will not know the actual year (e.g., \"grandpa died of a heart attack at the age of 50\"). Often times, neither precise dates nor ages are known (e.g., \"cousin died of congenital heart disease as an infant\")."

* insert LogicalModelTemplateRootOnly(age-obs, 2.16.840.1.113883.10.20.22.4.31)

* classCode 1..1
* classCode = #OBS (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-7613)."
* moodCode 1..1
* moodCode = #EVN (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-7614)."
* code 1..1
  * ^comment = "SHALL contain exactly one [1..1] code (CONF:81-7615)."
  * code 1..1
  * code = #445518008
    * ^comment = "This code SHALL contain exactly one [1..1] @code=\"445518008\" Age At Onset (CONF:81-16776)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.96"
    * ^comment = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.96\" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:81-26499)."
* statusCode 1..1
  * ^comment = "SHALL contain exactly one [1..1] statusCode (CONF:81-15965)."
  * code 1..1
  * code from $2.16.840.1.113762.1.4.1240.6 (required)
  * ^comment = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Completed or Nullified Act Status urn:oid:2.16.840.1.113762.1.4.1240.6."
* value 1..1
* value only $PQ
  * ^comment = "SHALL contain exactly one [1..1] value with @xsi:type=\"PQ\" (CONF:81-7617)."
  * unit 1..1
  * unit from AgePQ_UCUM (required)
    * ^comment = "This value SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet AgePQ_UCUM urn:oid:2.16.840.1.113883.11.20.9.21 DYNAMIC (CONF:81-7618)."