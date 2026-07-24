# Workflow: Module Onboarding

## Task Context

A confirmed enrolled module and its current official handbook, syllabus, assessment documents, learning environment materials, and academic year.

## Required Inputs

- Official module code, title, and academic year.
- Current official source file or URL and date received/accessed.
- Learning outcomes, assessment components, rubric/criteria, referencing rule, and AI-use rule when issued.
- Lecturer directions only when directly supplied or recorded.

Do not create a substantive module profile from an old catalogue entry, a search snippet, another university's module, or an AI-generated description.

## Method

1. Create the module scaffold using `scripts/New-SAISModule.ps1` when requested.
2. Register every authoritative source and its version in `Module_Source_Register.md`.
3. Extract facts faithfully into `Module_Profile.md`; distinguish quotations, summaries, interpretations, and open questions.
4. Resolve conflicts by date, authority, assessment specificity, and direct lecturer clarification.
5. Link each assessment project to the module profile without copying private source documents into Git.
6. Recheck the profile when a handbook, rubric, deadline, or AI-use rule changes.

## Output

- Versioned Module Profile.
- Source register with authority and supersession status.
- Confirmed assessment facts and unresolved questions.
- Links to associated project folders.

## Gaps

Record missing handbook, rubric, learning outcomes, weighting, deadlines, referencing rule, AI-use policy, lecturer clarification, or version/provenance information.

## Next Action

Obtain or verify the single official module document needed to resolve the highest-impact open question.
