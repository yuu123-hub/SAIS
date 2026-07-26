# SAIS ChatGPT MVP — Gap Analysis

## Scope and decision rule

This assesses only a ChatGPT Project Knowledge Pack for the user-specified academic-support tasks. Target Institution: **The University of Sheffield**. Target Programme: **Management and International Business MSc**. The repository remains modular; a future ChatGPT export may assemble attributed composite documents. This plan does not propose a Runtime, CLI, resolver, memory manager, vector store, API, GUI, multi-agent system, large schema set, release governance, or rollback drill.

## Necessary material already present

| MVP need | Existing source(s) | Status |
|---|---|---|
| Governing precedence and coaching boundary | `AGENTS.md`; `01_governance/Policy_Charter.md`; `00_system/Mission.md` | Present; needs a Project-safe distilled instruction file. |
| Academic integrity, uncertainty, evidence and citation discipline | `Academic_Integrity.md`; `Evidence_and_Uncertainty.md`; `POL-001`; `POL-030`; `Quality_Gates.md` | Present. |
| Harvard referencing | `05_projects/pre_arrival_foundation/materials/harvard.docx` | Present. Unique canonical University of Sheffield guide; last reviewed Summer 2025 and requires a freshness check against the University Library page before future packaging. |
| Assessment-specific AI boundary | `AI_Use_in_Assessment.md`; `Sheffield_GenAI_Reference.md`; `AI_Use_Record.md` | Present. |
| Assignment brief analysis | `Assignment_Analysis.md`; `Assignment_Brief_Analysis.md` | Present. |
| Essay/report planning and drafting support | `Assignment_Analysis.md`; `Argument_Map.md`; `Paragraph_Argument.md`; `Draft_Review.md`; `Academic_Output.md` | Present as generic academic support, not genre-specific documents. |
| Revision and rubric audit | `Draft_Review.md`; `Assessment_Review.md`; `Assessment_Evidence_Ledger.md`; `Examiner_Review.md` | Present. |
| Literature review and source analysis | `Literature_Analysis.md`; `Literature_Input_Pipeline.md`; `Literature_Search_and_Synthesis.md`; Reading Note, Search Log, Synthesis and Claim–Evidence templates | Present. |
| Claim–evidence mapping | Evidence policy; `POL-030`; Claim–Evidence Matrix; Assessment Evidence Ledger; Source Verification Log | Present. |
| Methodology and dissertation planning | `Research_Design.md`; `Methodology_Audit.md`; `Dissertation.md`; two dissertation tracks; Dissertation Status | Present. |
| Critical analysis and MSc-level writing support | Criticality policy, model and toolkit; Auditor/Challenger | Present as SAIS guidance, not as an official universal UK standard. |
| Submission audit | `Project_Lifecycle.md`; `Submission_Readiness.md`; Auditor, Challenger and Examiner Review | Present. |

## Missing necessary material

| Missing item | Effect on MVP | Minimum response |
|---|---|---|
| Academic Constitution source module | `00_Academic_Constitution/` does not exist. The governing rules are distributed across existing sources, so the original named module cannot be treated as a source. | Future export may create an explicitly attributed `core/SAIS_Academic_Constitution.md` composite. It must be labelled as an export composite, not an original recovered source. The absence affects consistent use of governance across all academic workflows, but no current workflow link is broken. |
| AOCOM source module | `01.5_AOCOM/` does not exist and no current file defines or links to it. | Leave AOCOM-specific functionality out of the MVP. The absence does not affect any currently linked workflow; record it as an unresolved source-recovery item, not a request for the user to interpret the acronym. |
| Essay Workflow | Essays are routed through generic assignment/draft workflows. | MVP can operate safely with a clearly labelled composite “Essay route”; no new source rule is required. |
| Report Workflow | Reports are routed through generic workflows, with a management/IB lens. | MVP can operate safely with a labelled composite “Report route”; do not invent report sections. |
| Essay and report templates | No explicit genre templates or section conventions exist. | Use generic Argument Map/Paragraph Argument only; add genre templates only from a brief/rubric or approved source. |
| Proposal template | The research-question and methodology templates do not specify a proposal structure. | Use them as planning tools; do not label them a proposal template. |
| Formal UK MSc Writing Standard | The available toolkit is SAIS guidance, not an official standard. | Describe it accurately and retain the current brief/rubric as controlling. |
| Current module/assessment-specific material | No current brief, rubric, handbook, or assessment AI policy is included for actual assessed outputs. | Make these required user inputs at task time; do not place generic programme information above them. |

## Duplicates, version conflicts, naming inconsistency, and overlap

| Type | Evidence | MVP treatment |
|---|---|---|
| Literal duplicates | No identical-file duplicates found by SHA-256 comparison. | No deletion or source change. |
| Integrity overlap | `Academic_Integrity.md` and `POL-001_Integrity.md` cover the same rule at different levels. | Merge as attributed sections in one export core file; retain both originals. |
| Citation overlap | `POL-030`, `Source_Verification_Log`, Auditor, and Submission Readiness all govern citation verification. | Keep the policy in `core`; retain log/checklist templates separately. |
| Criticality overlap | `POL-020`, `Criticality_Model`, Criticality Toolkit, Auditor and Challenger. | Keep policy/model/toolkit sections together in knowledge/core; retain Auditor and Challenger independently. |
| Programme-context overlap | MIB 2026 Reference, MIB Profile and Institutional Academic Model restate programme facts. | Use the detailed MIB 2026 reference as the factual base; merge only non-repeating operating cautions. |
| Version conflict | Operational Readiness says v1.4; Version and Changelog show v1.6. | Exclude Operational Readiness from the pack. |
| Naming inconsistency | Constitution, AOCOM, Essay Workflow, Report Workflow and UK MSc Writing Standard do not match current filenames. The Harvard source is named simply `harvard.docx`. | Use export-only descriptive names and an explicit source map; do not rename originals. |
| Character-encoding issue | README and Usage Conversation Notes display garbled characters in the current environment. | Do not upload these files unless they are checked and repaired separately. |

## Material not appropriate to upload

- All `05_projects/` material except `05_projects/pre_arrival_foundation/materials/harvard.docx`: project-scoped records, personal study baseline, and source-specific notes. The exception is the canonical University of Sheffield Harvard guide.
- All `06_memory/` records: personal preferences, writing weaknesses, ideas and learning history. The MVP expressly has no memory manager.
- `07_quality_control/test_cases/` and `tests/`: local regression fixtures, not instructions for a student-facing Project.
- `scripts/`, Git rules, registry metadata, changelog, version and system-audit/release records: local repository operations rather than ChatGPT knowledge.
- `00_system/How_to_Use_SAIS.md` and `00_system/SAIS_Usage_Conversation_Notes.md`: explicitly Not Included; the latter is also untracked, garbled and overlapping.
- `00_system/Operational_Readiness.md`: stale v1.4 status record.
- Data-analysis records and non-requested workflows: omit from the minimum pack; they can be added later only if the MVP scope expands.

## Resolved MVP decisions and remaining source-recovery items

- Fixed target: The University of Sheffield, Management and International Business MSc.
- Fixed export strategy: repository source files remain modular; the ChatGPT export may use attributed composite documents.
- Fixed exclusion: `00_system/How_to_Use_SAIS.md` is Not Included.
- Fixed Harvard decision: `05_projects/pre_arrival_foundation/materials/harvard.docx` is the one canonical Harvard guide for this MVP.
- Source-recovery item, not a user clarification: `00_Academic_Constitution/` and `01.5_AOCOM/` are absent. The export must not imply that either was recovered or invent their content.
- Optional scope item: Chinese-to-English drafting remains optional; if included, the existing assessment-specific AI-use gate remains mandatory.

## MVP impact

The pack can safely support the requested Harvard-referencing task through the canonical Sheffield guide, subject to a freshness check against the University Library page before packaging. AOCOM-specific functionality remains out of scope because no source exists, but no currently linked MVP workflow depends on it. Essay/report support remains generic and rubric-led rather than genre-template-led. Current brief, rubric and assessment-specific AI-use policy remain mandatory task-time inputs.
