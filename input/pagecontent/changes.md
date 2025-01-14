### Version 

The changes in this version of Consolidated CDA have been made from STU comments and JIRA issues that were raised by the community and approved by the Structured Documents working group.

#### Major Changes

* Removed Diagnostic Imaging Report document template and relevant section and entry templates
* Removed any templates that are DEPRECATED
* Removed Entries Optional templates if an equivalent Entries Required template exists
* Combined Companion Guide and C-CDA narrative into one guide
* Added Medication Adherence, Treatment Intervention Preference, and Care Experience Preference USCDI Entry templates
* Added USCDI tag and extensions to relevant USCDI elements
* Moved USCDI guidance to the relevant template element

#### Tracker Issues Applied

- [CDA-814](https://jira.hl7.org/browse/CDA-814) - Change assorted vocabulary bindings
- [CDA-939](https://jira.hl7.org/browse/CDA-939) - Make Interventions section mandatory in Care Plan
- [CDA-1693](https://jira.hl7.org/browse/CDA-1693) - Change the name of the Interventions Section to Activities Section.
- [CDA-1240](https://jira.hl7.org/browse/CDA-1240) - Added assignedPerson with US Realm Person Name to Procedure Activity Procedure template.
- [CDA-1273](https://jira.hl7.org/browse/CDA-1273) - Changed Problem Observation in Problem Concern Act from 1..* to 1..1.
- [CDA-1274](https://jira.hl7.org/browse/CDA-1274) - Changed Allergy Intolerance Observation in Allergy Concern Act from 1..* to 1..1.
- [CDA-1277](https://jira.hl7.org/browse/CDA-1277) - Added a Progress Towards Goal Observation to the Goal Observation template.
- [CDA-1278](https://jira.hl7.org/browse/CDA-1278) - Changed the GoalObservation statusCode to be bound to a value set.
- [CDA-1367](https://jira.hl7.org/browse/CDA-1367) - Use proper LOINC code (8693-4) with no translations on Mental Status Observation template.
- [CDA-1381](https://jira.hl7.org/browse/CDA-1381) - Constraint that doseQuantity/@unit and administrationUnitCode SHALL NOT both be present.
- [CDA-1381](https://jira.hl7.org/browse/CDA-1381) - Prevent doseQuantity/@unit and administrationUnitCode/@code from both being present where both are on a profile
- [CDA-1429](https://jira.hl7.org/browse/CDA-1429) - Remove Goal Observation value constraint
- [CDA-1430](https://jira.hl7.org/browse/CDA-1430) - Added code constraints to Findings Section
- [CDA-1469](https://jira.hl7.org/browse/CDA-1469) - Updated MentalStatusObservation.value to be from new SNOMED cognitive function value set.
- [CDA-1505](https://jira.hl7.org/browse/CDA-1505) - Patient Generated Document header has the same bindings as US Realm Header for performer functionCode.
- [CDA-1513](https://jira.hl7.org/browse/CDA-1513) - Change the Health Insurance Type binding to be the X12N Insurance Type code system
- [CDA-1526](https://jira.hl7.org/browse/CDA-1526) - Add guidance on @unit in Vital Sign Observation
- [CDA-1627](https://jira.hl7.org/browse/CDA-1627) - Bind Procedure Act Procedure code to US Core Procedure value set.
- [CDA-1637](https://jira.hl7.org/browse/CDA-1637)/[CDA-1638](https://jira.hl7.org/browse/CDA-1638) - Update Discharge Disposition code binding.
- [CDA-1757](https://jira.hl7.org/browse/CDA-1757) - Updated BirthSex template to align with Gender Harmony.
- [CDA-1760](https://jira.hl7.org/browse/CDA-1760) - Changed Smoking Status statusCode to be bound to a value set.
- [CDA-1762](https://jira.hl7.org/browse/CDA-1762) - Update the encompassingEncounter responsibleParty to be SHOULD.
- [CDA-1789](https://jira.hl7.org/browse/CDA-1789) - Provided guidance on using PlannedEncounter template for future encounters.
- [CDA-1793](https://jira.hl7.org/browse/CDA-1793) - Remove Vaccine Clinical Drug value set from Immunization Medication Information template
- [CDA-1797](https://jira.hl7.org/browse/CDA-1797) - Add optional Payers Section to Referral Note
- [CDA-1802](https://jira.hl7.org/browse/CDA-1802) - Change Smoking Status binding from SHALL to MAY
- [CDA-1806](https://jira.hl7.org/browse/CDA-1806) - Updated wording of documentationOf.serviceEvent.code in Operative Note
- [CDA-1873](https://jira.hl7.org/browse/CDA-1873) - Changed Encounter Diagnosis statusCode to be 'completed'.
- [CDA-1922](https://jira.hl7.org/browse/CDA-1922) - NullFlavor is not allowed on confidentialityCode.
- [CDA-1922](https://jira.hl7.org/browse/CDA-1922) - Added @code and disallowed @nullFlavor from confidentialityCode in US Realm Header
- [CDA-2007](https://jira.hl7.org/browse/CDA-2007) - Change Authorization Activity entryRelationship from SHALL to MAY
- [CDA-2108](https://jira.hl7.org/browse/CDA-2108) - Prevent both @code and @nullFlavor from being present on Result Observation
- [CDA-20004](https://jira.hl7.org/browse/CDA-20004) - Remove binding to HL7 Discharge Disposition code system
- [CDA-20005](https://jira.hl7.org/browse/CDA-20005) - Added LOINC Scale chart to description in Result Observation
- [CDA-20008](https://jira.hl7.org/browse/CDA-20008) - Updated ProcedureNote.encompassingEncounter.code binding to requested valueset. Added code 0..1 to USRealmHeader.encompassingEncounter with binding to requested valueset
- [CDA-20014](https://jira.hl7.org/browse/CDA-20014) - Added new problem observation example that includes a SNOMED post-coordinated code.
- [CDA-20022](https://jira.hl7.org/browse/CDA-20022) - Added a page that lists all of the used value sets and used code systems.
- [CDA-20047](https://jira.hl7.org/browse/CDA-20047) - Remove Diagnostic Imaging Report document template and child section and entry templates.  Remove templates with DEPRECATED in title
- [CDA-20053](https://jira.hl7.org/browse/CDA-20053) - Updated languageCode to use valueset AllLanguages in US Realm Header and US Realm Header for Patient Generated Document
- [CDA-20053](https://jira.hl7.org/browse/CDA-20053) - Updated value set binding for languageCode to be AllLanguages.
- [CDA-20076](https://jira.hl7.org/browse/CDA-20076) - Changed value on Severity Observation from SHALL to SHOULD and modified description to match
- [CDA-20085](https://jira.hl7.org/browse/CDA-20085) - Allow Result Observation value to be from SNOMED or LOINC.
- [CDA-20085](https://jira.hl7.org/browse/CDA-20085) - Updated Observation/value to include LOINC codes in Result Observation
- [CDA-20324](https://jira.hl7.org/browse/CDA-20324) - Moved binding to ObservationInterpretation from interpretationCode/@code to interpretationCode.
- [CDA-20444](https://jira.hl7.org/browse/CDA-20444) - Bind Problem Observation code to US Core Condition value set.
- [CDA-20449](https://jira.hl7.org/browse/CDA-20449) - Added Mental Status Section to Progress Note
- [CDA-20449](https://jira.hl7.org/browse/CDA-20449) - Allow Mental Status section in Progress Note document.
- [CDA-20451](https://jira.hl7.org/browse/CDA-20451) - Allow HCPCS to Procedure Note serviceEvent code
- [CDA-20462](https://jira.hl7.org/browse/CDA-20462) - Allow multiple performers in Operative Note
- [CDA-20463](https://jira.hl7.org/browse/CDA-20463) - Allow HCPCS to Planned Procedure code
- [CDA-20478](https://jira.hl7.org/browse/CDA-20478) - Added @code under dosumentationOf.serviceEvent in Operative Note and moved constraint there
- [CDA-20478](https://jira.hl7.org/browse/CDA-20478) / [CDA-1806](https://jira.hl7.org/browse/CDA-1806) - Update OperativeNote/ProcedureNote binding on serviceEvent.
- [CDA-20482](https://jira.hl7.org/browse/CDA-20482) - Extensionless templates are not allowed to have an extension.
- [CDA-20516](https://jira.hl7.org/browse/CDA-20516) - Added specific wording to code defining nullFlavor in designconsiderations.md
- [CDA-20516](https://jira.hl7.org/browse/CDA-20516) - Updated guidance on how to specify when NullFlavors are allowed.
- [CDA-20518](https://jira.hl7.org/browse/CDA-20518) - Allow NDC codes when specifying MedicationInformation.
- [CDA-20543](https://jira.hl7.org/browse/CDA-20543) - Change guidance on Supply repeatNumber
- [CDA-20546](https://jira.hl7.org/browse/CDA-20546) - PQ values require a @unit
- [CDA-20565](https://jira.hl7.org/browse/CDA-20565) - Remove requirement to send R1.1 template IDs
- [CDA-20568](https://jira.hl7.org/browse/CDA-20568) - Add the word DYNAMIC to Encounter Activity binding.
- [CDA-20664](https://jira.hl7.org/browse/CDA-20664) - Remove Entries Optional section templates
- [CDA-20673](https://jira.hl7.org/browse/CDA-20673) - Update Policy Activity to be "SHOULD contain 0..1 address".
- [CDA-20681](https://jira.hl7.org/browse/CDA-20681) - Templates no longer contain a version label in their name (such as V2, V3, etc.)
- [CDA-20687](https://jira.hl7.org/browse/CDA-20687) - Update MedicationActivity doseQuantity guidance.
- [CDA-20693](https://jira.hl7.org/browse/CDA-20693) - typo correction to USCDI guidance
- [CDA-20698](https://jira.hl7.org/browse/CDA-20698) / [CDA-20697](https://jira.hl7.org/browse/CDA-20697) - Add sections to Discharge Summary document.
- [CDA-20711](https://jira.hl7.org/browse/CDA-20711) - update Gender Harmony guidance
- [CDA-20713](https://jira.hl7.org/browse/CDA-20713) - Care Team Member Function value set updated.
- [CDA-20737](https://jira.hl7.org/browse/CDA-20737) - Remove Procedure Activity Act and Procedure Activity Observation templates.
- [CDA-20757](https://jira.hl7.org/browse/CDA-20757), [CDA-20771](https://jira.hl7.org/browse/CDA-20771), [CDA-20758](https://jira.hl7.org/browse/CDA-20758) - Updated USCDI guidance on Coverage Activity and Policy Activity.
- [CDA-20763](https://jira.hl7.org/browse/CDA-20763) - Updated text on Policy Activity Act around coverage information.
- [CDA-20767](https://jira.hl7.org/browse/CDA-20767) - Remove CarePlan intendedRecipient/receivedOrganization/name rule
- [CDA-20769](https://jira.hl7.org/browse/CDA-20769) - Added new Disability Status Observation example that meets the template.
- [CDA-20771](https://jira.hl7.org/browse/CDA-20771) - Added SHOULD effectiveTime to Policy Activity Act.
- [CDA-20772](https://jira.hl7.org/browse/CDA-20772) - Updated RelatedPersonRelationshipandNameParticipant associatedEntity.code to new valueset
- [CDA-20775](https://jira.hl7.org/browse/CDA-20775) - Make USRealmDateTime require timezone offsets; use this template in any other modified templates where it was missed
- [CDA-20784](https://jira.hl7.org/browse/CDA-20784) - Updated the Advance Directive Section, Organizer, and Observation to the latest versions of the templates.
- [CDA-20786](https://jira.hl7.org/browse/CDA-20786) - Set some bound observations to have a type.
- [CDA-20787](https://jira.hl7.org/browse/CDA-20787) - Add guidance on the use of subsections.
- [CDA-20788](https://jira.hl7.org/browse/CDA-20788) - Updated the purpose statement of the Advance Directive Section template.
- [CDA-20789](https://jira.hl7.org/browse/CDA-20789) - Added Advance Directives Section to all Document templates (as MAY if not already there)
- [CDA-20790](https://jira.hl7.org/browse/CDA-20790) - Added guidance on machine readable information to Advance Directive Section
- [CDA-20792](https://jira.hl7.org/browse/CDA-20792) - Added subsection guidance to Procedures and Results sections
- [CDA-20794](https://jira.hl7.org/browse/CDA-20794) - Restrict Immunization.repeatNumber to just a value
- [CDA-20803](https://jira.hl7.org/browse/CDA-20803) - Updated description in ResultOrganizer to include specimen clarification
- [CDA-20807](https://jira.hl7.org/browse/CDA-20807) - Add should rules for Performer, Author, and Informant to Advance Directive Organizer and Observation
- [CDA-20813](https://jira.hl7.org/browse/CDA-20813) - Changed the DeceasedInd and DeceasedTime constraints.
- [CDA-20814](https://jira.hl7.org/browse/CDA-20814) - Updated all UDI templates to allow additional templateIds.
- [CDA-20822](https://jira.hl7.org/browse/CDA-20822) - Updated CareTeamMemberAct to clean up untestable constraints and unnecessary "such that it".
- [CDA-20823](https://jira.hl7.org/browse/CDA-20823) - Updated USRealmAddress Value Sets; used everywhere addr was referenced in IG
- [CDA-20825](https://jira.hl7.org/browse/CDA-20825) - Clean up PlannedSupply product vs device modeling
- [CDA-20827](https://jira.hl7.org/browse/CDA-20827) - Removed slicing from USRealmHeader authenticator
- [CDA-20828](https://jira.hl7.org/browse/CDA-20828) - Changed constraint in Advance Directive Observation to only allow a timestamp instead of an interval
- [CDA-20877](https://jira.hl7.org/browse/CDA-20877) - Removed compatibility comment on vital signs organizer
- [CDA-20878](https://jira.hl7.org/browse/CDA-20878) - Updated LOINC code on Coverage Activity to 52556-8 Payment sources


#### Templates with New Extensions due to Major Change

{% raw %}
<blockquote class="note-to-balloters">
<p>
	The intent of providing a new extension to a template was to indicate when major change had occurred and thus instances of the template that were previously valid might no longer be valid due to changes in the template.  We have tried to identify all templates where major change occurred.  Comments about specific templates that SHOULD have received a new extension or templates that SHOULD NOT have received a new extension are appreciated.
</p>
</blockquote>
{% endraw %}


Templates that received a new extension in this version of the guide have '2024-05-01' as their extension.

##### Document Templates
*US Realm Header* had a number of changes that propagate through the other Document Templates.  Due to this, all document template ids received a new extension.

##### Section Templates
No section templates had major changes and thus they all retain their previous template id.

##### Entry Templates
The following entry templates had major changes and thus their template ids received a new extension:

| Entry | Changes |
| --- | --- |
| [Birth Sex Observation](StructureDefinition-BirthSexObservation.html) | value binding changed |
| [Coverage Activity](StructureDefinition-CoverageActivity.html) | updated LOINC code |
| [Mental Status Observation](StructureDefinition-MentalStatusObservation.html) | updated code and new value binding |
| [Planned Supply](StructureDefinition-PlannedSupply.html) | one form of product SHALL be present |
| [Policy Activity](StructureDefinition-PolicyActivity.html) | effectiveTime is now SHOULD |
| [Problem Concern Act](StructureDefinition-ProblemConcernAct.html) | only one ProblemObservation is allowed |
| [Problem Observation](StructureDefinition-ProblemObservation.html) | value has US-Core value set binding |
| [Procedure Activity Procedure](StructureDefinition-ProcedureActivityProcedure.html) | code has new US-Core binding |
| [Smoking Status - Meaningful Use](StructureDefinition-SmokingStatusMeaningfulUse.html) | statusCode.code bound to new valueset |
