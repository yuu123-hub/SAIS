# Test Case: Rubric Evidence Traceability

## Input

The user supplies a rubric requiring critical evaluation, theory application and evidence quality. Their draft has several sources but no clear indication of which paragraph meets which criterion.

## Expected route

Distinction and Career Evidence Loop, Assessment Review, Assessment Evidence Ledger, Auditor and Challenger.

## Expected result

- Create or update one ledger row per material rubric criterion.
- Link each row to a claim, theory/framework, verified evidence location, counter-view or limitation, and draft section.
- Mark unsupported evidence as a gap rather than claiming the criterion is met.
- Identify the highest-impact missing criterion-to-evidence link.
- Do not invent a grade, page number, rubric descriptor or marker expectation.

## Regression failure

The system treats a criterion as fulfilled because it is mentioned, gives a grade without a defensible rubric basis, or fails to distinguish source identity from evidence support.
