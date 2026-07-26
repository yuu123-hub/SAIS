# SAIS ChatGPT MVP — Build Plan

## Scope and stop boundary

This plan creates only a static, uploadable Knowledge Pack for **The University of Sheffield** and the **Management and International Business MSc**. The repository remains modular; the future ChatGPT export may use attributed composite documents. It does not create the export in this stage and does not start Phase 0–6 or build any runtime component. The only future output tree is:

```text
exports/chatgpt_mvp/
├── 00_START_HERE.md
├── 01_PROJECT_INSTRUCTIONS.txt
├── 02_UPLOAD_CHECKLIST.md
├── 03_DO_NOT_UPLOAD.md
├── core/
├── workflows/
├── knowledge/
├── templates/
├── quality_control/
└── VERSION.md
```

All export documents must retain their source path(s), preserve rule precedence, and avoid introducing requirements not present in the listed source files.

## Proposed file map

| Proposed export path | Source files to copy or assemble | Treatment |
|---|---|---|
| `00_START_HERE.md` | `00_system/Mission.md`; relevant task routes from `Task_Router.md`; input/gap language from `Workflow_Contract.md` | Assemble a concise entry point for the University of Sheffield MIB MSc: supported tasks, required inputs, AI-policy warning, and where to start. |
| `01_PROJECT_INSTRUCTIONS.txt` | `AGENTS.md`; `Policy_Charter.md`; `Academic_Integrity.md`; `AI_Use_in_Assessment.md`; `Evidence_and_Uncertainty.md`; `Quality_Gates.md`; `Workflow_Contract.md`; MVP rows from `Task_Router.md` | Assemble the Project instructions from attributed, unchanged rule sections. Exclude Git, filesystem, script, memory-manager and repository-routing mechanics. |
| `02_UPLOAD_CHECKLIST.md` | `Data_Governance.md`; `Project_Lifecycle.md`; `Source_Verification_Log.md`; `Submission_Readiness.md` | Tell the student which current brief/rubric/source files are needed and what must be redacted or withheld. |
| `03_DO_NOT_UPLOAD.md` | `Data_Governance.md`; `AI_Use_in_Assessment.md`; `Memory_Policy.md` (principle only) | List confidential, personal, participant, employer, unpublished, feedback and licensed material boundaries. Do not copy any memory records. |
| `core/SAIS_Academic_Constitution.md` | `Policy_Charter.md`; `Academic_Integrity.md`; `POL-001_Integrity.md`; `Evidence_and_Uncertainty.md`; `POL-030_Citation_Discipline.md`; `Quality_Gates.md`; `AI_Use_in_Assessment.md` | Export-only composite because the expected source module `00_Academic_Constitution/` is absent. Preserve source headings/attribution; label it as a composite and do not add a rule or imply recovery of an original Constitution. |
| `core/Sheffield_Context_and_Override_Rules.md` | `Sheffield_GenAI_Reference.md`; `Sheffield_PGT_Assessment_Reference.md`; `Institutional_Academic_Model.md`; `MIB_2026_Official_Programme_Reference.md`; unique operating implications from `Sheffield_MIB_Profile.md` | Keep the explicit hierarchy: current assessment material overrides all general context. Include MIB context because the target programme is fixed. |
| `workflows/01_Assignment_Essay_and_Report.md` | `Assignment_Analysis.md`; `Project_Lifecycle.md`; `Draft_Review.md`; `Assessment_Review.md`; `Management_and_IB_Analysis.md` | Composite route for brief analysis, essay/report planning, drafting support, revision and audit. It must state that essay/report are composite routes, not original standalone workflows. |
| `workflows/02_Source_Analysis.md` | `Literature_Analysis.md`; `Literature_Input_Pipeline.md` | Keep source analysis and verification together. |
| `workflows/03_Literature_Review.md` | `Literature_Search_and_Synthesis.md` | Keep independent due to search-mode, screening and defensible-gap rules. |
| `workflows/04_Methodology_Planning.md` | `Research_Design.md` | Keep independent due to question–method–ethics fit. |
| `workflows/05_Dissertation_Planning.md` | `Dissertation.md`; `dissertation_tracks/Academic_Research.md`; `dissertation_tracks/Managerial_Problem_Solving.md` | Keep the two tracks visibly separate within one dissertation package. |
| `workflows/06_Chinese_to_English_Drafting.md` | `Chinese_to_English_Drafting.md` | Optional. Include only if the user approves bilingual support. |
| `knowledge/Critical_Analysis_and_Academic_Writing.md` | `Criticality_and_Academic_English.md`; `Criticality_Model.md`; `POL-020_Criticality.md` | Merge attributed sections while retaining the distinction between diagnostic lens, learning toolkit and policy. This is not to be labelled a formal UK MSc Writing Standard. |
| `knowledge/Research_Methods_Foundations.md` | `Methods_and_Statistics_Foundations.md` | Copy as a bounded preparatory guide; link users back to methodology workflow and ethics/supervisor requirements. |
| `knowledge/Management_and_IB_Foundations.md` | `Management_and_International_Business_Foundations.md` | Include because the target programme is MIB MSc; retain its foundation-only status. |
| `knowledge/Sheffield_Harvard_Referencing_Guide.docx` | `05_projects/pre_arrival_foundation/materials/harvard.docx` | Copy the unique canonical Harvard guide as a standalone file; do not reformat, summarise, or merge its source-type examples. Record: University of Sheffield, last reviewed Summer 2025, and mandatory freshness check against the University Library referencing page before export. |
| `templates/Academic_Output.md` | `Academic_Output.md` | Copy independently. |
| `templates/Assignment_Brief_Analysis.md` | `Assignment_Brief_Analysis.md` | Copy independently. |
| `templates/Argument_and_Paragraph.md` | `Argument_Map.md`; `Paragraph_Argument.md` | Merge as two named templates. |
| `templates/Reading_Note.md` | `Reading_Note.md` | Copy independently. |
| `templates/Literature_Review_Records.md` | `Search_Log.md`; `Literature_Synthesis.md`; `Claim_Evidence_Matrix.md`; `Source_Verification_Log.md` | Merge as four named records. |
| `templates/Assessment_and_Submission_Records.md` | `Assessment_Evidence_Ledger.md`; `Submission_Readiness.md`; optionally `AI_Use_Record.md` | Merge checklist/ledger records; AI record remains conditional on assessment permission. |
| `templates/Research_and_Dissertation_Records.md` | `Research_Question_Card.md`; `Methodology_Audit.md`; `Dissertation_Status.md` | Merge as three named records. |
| `quality_control/Auditor.md` | `Auditor.md` | Keep independent. |
| `quality_control/Challenger.md` | `Challenger.md` | Keep independent. |
| `quality_control/Examiner_Review.md` | `Examiner_Review.md` | Keep independent; preserve its no-grade-prediction caveat. |
| `VERSION.md` | `00_system/Version.md`; `CHANGELOG.md` | State MVP pack version, source-repository version/date, audit date, scope, and unresolved gaps. Do not copy full release history. |

## Files that must not enter the pack

- All original files remain in place; nothing is moved or deleted.
- Do not include `05_projects/` except the unique canonical Harvard guide `05_projects/pre_arrival_foundation/materials/harvard.docx`; do not include `06_memory/`, `scripts/`, `tests/`, `07_quality_control/test_cases/`, module registry, release logs, Git guidance, operational-readiness report, or garbled untracked conversation notes.
- Do not include current or future briefs, rubrics, handbooks, lecturer/supervisor feedback, submissions, personal reflections, research data, interview material, confidential company material, or licensed full-text readings as default pack knowledge.
- Do not include `00_system/How_to_Use_SAIS.md`; it is explicitly Not Included in this MVP.

## Merge versus keep-separate rules

### Merge in the export only

- Governance/integrity/evidence/AI rules into one clearly attributed Constitution file.
- Assignment, essay, report, drafting, revision and assessment-review steps into one composite academic-work route.
- Criticality policy, model and learning toolkit into a clearly labelled critical-analysis/writing knowledge file.
- Closely related record templates into small labelled bundles, keeping each source template visually distinct.

The repository remains modular throughout. Composite documents are an export-only packaging choice and must always identify their original source files.

### Keep separate in the export

- Literature review: its reproducibility and gap-claim rules must remain visible.
- Methodology planning: its ethics and design-fit checks must remain visible.
- Dissertation tracks: academic research and managerial problem solving must not be conflated.
- Auditor, Challenger and Examiner Review: they test different failure modes.
- Submission Readiness: final checklist should remain identifiable even if bundled with the assessment ledger.
- The Sheffield Harvard guide: keep standalone as the unique canonical formatting source; do not dilute it into a composite.
- Institutional MIB context: included for this target programme and explicitly subordinate to current official assessment materials.

## Minimum viable pack

The smallest usable version requires:

1. `00_START_HERE.md`, Project instructions, upload checklist, do-not-upload list, and `VERSION.md`.
2. Core rules for precedence, integrity, evidence/uncertainty, citation discipline, AI use and quality gates.
3. Workflows for assignment/essay/report, source analysis, literature review, methodology planning and dissertation planning.
4. Templates for brief analysis, argument/paragraphs, source notes, search/synthesis/claim-evidence, methodology/dissertation, assessment evidence and submission readiness.
5. Auditor, Challenger and Examiner Review.
6. `knowledge/Sheffield_Harvard_Referencing_Guide.docx` as the unique canonical Harvard guide.

The pack should require a freshness check of the canonical Harvard guide against the University Library referencing page before packaging, require user-supplied current brief/rubric/AI policy before assessed drafting, and treat all Sheffield/programme material as subordinate to those current official materials. AOCOM remains out of scope because its expected source module is absent; no existing MVP workflow is dependent on it.

## Build validation for the next stage

Before any export is made, verify that each composite file has a source map, has not changed the source meaning, contains no private/project material, uses readable UTF-8, and is clearly export-only. Verify that `harvard.docx` is still current against the University Library referencing page before copying it. Do not claim AOCOM-specific or genre-specific rules that are not currently present.
