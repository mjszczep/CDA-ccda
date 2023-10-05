Profile: PreconditionforSubstanceAdministration
Parent: $Criterion
Id: PreconditionforSubstanceAdministration
Title: "Precondition for Substance Administration"
Description: "A criterion for administration can be used to record that the medication is to be administered only when the associated criteria are met."

* insert LogicalModelTemplate(preconditionSubstanceAdministration, 2.16.840.1.113883.10.20.22.4.25, 2014-06-09)

* code 1..1
  * ^comment = "SHALL contain exactly one [1..1] code with @xsi:type=\"CD\" (CONF:1098-32396)."
  * code 1..1
  * code = #ASSERTION
    * ^comment = "This code SHALL contain exactly one [1..1] @code=\"ASSERTION\" Assertion (CONF:1098-32397)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.5.4"
    * ^comment = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.4\" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:1098-32398)."
* value 1..1
* value only $CD
* value from Problem (required)
  * ^comment = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHALL be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-7369)."