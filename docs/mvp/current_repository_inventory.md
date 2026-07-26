# SAIS ChatGPT MVP — Current Repository Inventory

## Audit scope and status

- Audit date: 26 July 2026.
- Scope: all 114 Markdown files in the repository, plus the repository status and top-level module layout. No source file was changed during the audit.
- Repository state at audit start: 112 tracked Markdown files and two untracked files: `00_system/How_to_Use_SAIS.md` and `00_system/SAIS_Usage_Conversation_Notes.md`.
- Formal SAIS module directories: `00_system`, `01_governance`, `02_institution`, `03_knowledge`, `03_workflows`, `04_templates`, `05_projects`, `06_memory`, and `07_quality_control`. The architecture assigns a distinct ownership boundary to each; `05_projects` is project state rather than reusable knowledge.
- No file is named **Academic Constitution**, **AOCOM**, **Essay Workflow**, **Report Workflow**, **Harvard Guide**, or **UK MSc Writing Standard**. These are gaps, not alternate filenames.

`Canonical` below means the recommended authoritative source for the proposed MVP, based on the repository's ownership and precedence rules. It does not change the status of the original file. `Duplicate` means a substantive duplicate, not merely overlapping coverage.

## Formal sources suitable for the Knowledge Pack

| File | Relative path | Purpose | Canonical | Active | Duplicate | Draft | Deprecated | Pack? | Suggested class | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| Operating contract | `AGENTS.md` | Routing, academic boundary, precedence, privacy and Git rules | Yes | Yes | No | No | No | Yes, distilled | core | Highest operational rule source; exclude repository/Git mechanics from ChatGPT instructions. |
| Mission | `00_system/Mission.md` | Coaching-first, evidence-led purpose | Yes | Yes | No | No | No | Yes | core | Compact purpose statement. |
| Architecture | `00_system/SAIS_Architecture.md` | Module ownership and durable-state model | Yes | Yes | No | No | No | Yes, distilled | core | Retain ownership/precedence; omit Codex-native implementation detail. |
| Data Governance | `00_system/Data_Governance.md` | Privacy and material-handling classification | Yes | Yes | No | No | No | Yes | core | Essential upload and prompt privacy boundary. |
| Onboarding Checklist | `00_system/Onboarding_Checklist.md` | Readiness and task-start checklist | Yes | Yes | No | No | No | Optional | core | Useful, but not minimum task-handling rule. |
| How to Use SAIS | `00_system/How_to_Use_SAIS.md` | Practical prompts for brief, research, drafting, review and audit | No—untracked | Yes | Partial overlap | No | No | Yes, review first | core | Clear MVP-oriented guide, but untracked; approve or formalise before treating as canonical. |
| Usage Conversation Notes | `00_system/SAIS_Usage_Conversation_Notes.md` | Token-use notes and conversation examples | No—untracked | Unclear | Partial overlap | Yes | No | No | exclude | Garbled character rendering and substantial overlap with `How_to_Use_SAIS.md`; do not upload. |
| Operational Readiness | `00_system/Operational_Readiness.md` | v1.4 operational assessment and boundaries | Yes | Stale | No | No | Superseded in part | No | exclude | States v1.4 while `Version.md` is v1.6; internal release record, not student knowledge. |
| Module Registry | `00_system/registries/Module_Registry.md` | Registry of SAIS module ownership | Yes | Yes | No | No | No | No | exclude | Runtime/maintenance metadata. |
| Version | `00_system/Version.md` | Current version and change policy | Yes | Yes | No | No | No | No | exclude | Release metadata. |
| Governance Charter | `01_governance/Policy_Charter.md` | Decision hierarchy and policy levels | Yes | Yes | No | No | No | Yes | core | Closest repository source to an Academic Constitution, but not labelled as one. |
| Academic Integrity | `01_governance/Academic_Integrity.md` | Non-negotiable integrity rules | Yes | Yes | Partial overlap | No | No | Yes | core | Keep with the three numbered policies. |
| AI Use in Assessment | `01_governance/AI_Use_in_Assessment.md` | Assessment-specific AI-use gate and authorship boundary | Yes | Yes | No | No | No | Yes | core | Mandatory for drafting support. |
| Evidence and Uncertainty | `01_governance/Evidence_and_Uncertainty.md` | Source hierarchy and confidence labels | Yes | Yes | No | No | No | Yes | core | Core claim-evidence rule. |
| Quality Gates | `01_governance/Quality_Gates.md` | Integrity, evidence, reasoning, communication and alignment gates | Yes | Yes | No | No | No | Yes | core | Can merge with the core rule file without changing wording. |
| POL-001 Integrity | `01_governance/policies/POL-001_Integrity.md` | Formal integrity policy | Yes | Yes | Partial overlap | No | No | Yes | core | More formal version of Academic Integrity; retain both sections in a merged export. |
| POL-020 Criticality | `01_governance/policies/POL-020_Criticality.md` | Critical-evaluation policy | Yes | Yes | Partial overlap | No | No | Yes | core | Complements the Criticality Toolkit. |
| POL-030 Citation Discipline | `01_governance/policies/POL-030_Citation_Discipline.md` | Citation and quotation discipline | Yes | Yes | Partial overlap | No | No | Yes | core | Citation-integrity policy, not a Harvard formatting guide. |
| GenAI Reference | `02_institution/Sheffield_GenAI_Reference.md` | Verified University GenAI position | Yes | Yes | No | No | No | Yes | core | Keep source/date and override wording. |
| PGT Assessment Reference | `02_institution/Sheffield_PGT_Assessment_Reference.md` | General PGT bands and critical-analysis caveat | Yes | Yes | No | No | No | Yes, labelled | core | General context only; cannot determine a module grade. |
| MIB 2026 Reference | `02_institution/MIB_2026_Official_Programme_Reference.md` | Provisional official programme context | Yes | Yes | Partial overlap | No | No | Optional, labelled | core | Must retain its revision warning; module documents override it. |
| MIB Profile | `02_institution/Sheffield_MIB_Profile.md` | Condensed MIB programme context | No | Yes | Yes—MIB reference | No | No | No, merge | core | Merge only the unique operating implications with the MIB 2026 reference. |
| Institutional Academic Model | `02_institution/profiles/sheffield_management_school/Institutional_Academic_Model.md` | Minimal institution profile and ethics warning | Yes | Yes | Partial overlap | No | No | Yes | core | Retain explicit statement that it is not a marker model. |
| Criticality Model | `02_institution/profiles/sheffield_management_school/Criticality_Model.md` | Five-level criticality diagnostic lens | Yes | Yes | Partial overlap | No | No | Yes | knowledge | Keep distinct from the fuller skill toolkit, or cross-reference it. |
| Academic English Toolkit | `03_knowledge/academic_skills/Criticality_and_Academic_English.md` | Critical analysis, paragraph logic, vocabulary and cautious claims | Yes | Yes | Partial overlap | No | No | Yes | knowledge | Closest available Critical Analysis Guide and writing standard. |
| Methods and Statistics Foundations | `03_knowledge/research_methods/Methods_and_Statistics_Foundations.md` | Introductory research-methods and statistics guide | Yes | Yes | No | No | No | Yes | knowledge | Closest available Research Methods Guide; explicitly preparatory. |
| Management and IB Foundations | `03_knowledge/foundations/Management_and_International_Business_Foundations.md` | Foundational management/IB concepts | Yes | Yes | No | No | No | Optional | knowledge | Useful for MIB context, not required for the requested MVP capabilities. |
| Assignment Analysis | `03_workflows/Assignment_Analysis.md` | Brief/rubric extraction, success conditions, evidence plan and outline | Yes | Yes | No | No | No | Yes | workflows | Primary Assignment Brief Analysis workflow; also covers essay/report planning. |
| Project Lifecycle | `03_workflows/Project_Lifecycle.md` | Assessed task stages from intake to submission check | Yes | Yes | No | No | No | Yes | workflows | Primary end-to-end submission route. |
| Draft Review | `03_workflows/Draft_Review.md` | Evidence-led draft diagnosis and prioritised revision | Yes | Yes | No | No | No | Yes | workflows | Primary essay/report revision support. |
| Assessment Review | `03_workflows/Assessment_Review.md` | Rubric evidence review and readiness judgement | Yes | Yes | No | No | No | Yes | workflows | Primary essay/report audit. |
| Literature Analysis | `03_workflows/Literature_Analysis.md` | Analyse a single source and create a reading note | Yes | Yes | No | No | No | Yes | workflows | Primary Source Analysis workflow. |
| Literature Input Pipeline | `03_workflows/Literature_Input_Pipeline.md` | Collect, extract, verify and link a source | Yes | Yes | No | No | No | Yes | workflows | Preserve source-verification and legal-access gates. |
| Literature Search and Synthesis | `03_workflows/Literature_Search_and_Synthesis.md` | Transparent, bounded search, screening, synthesis and gap claims | Yes | Yes | No | No | No | Yes | workflows | Primary Literature Review workflow. |
| Research Design | `03_workflows/Research_Design.md` | Research chain, methodology fit, feasibility and ethics | Yes | Yes | No | No | No | Yes | workflows | Primary Methodology Planning workflow. |
| Dissertation | `03_workflows/Dissertation.md` | Dissertation route, stages and supervisor/ethics gates | Yes | Yes | No | No | No | Yes | workflows | Primary Dissertation Planning workflow. |
| Academic Research Track | `03_workflows/dissertation_tracks/Academic_Research.md` | Scholarly-question dissertation route | Yes | Yes | No | No | No | Yes | workflows | Keep distinct from managerial problem solving. |
| Managerial Problem Solving Track | `03_workflows/dissertation_tracks/Managerial_Problem_Solving.md` | Client/problem-led dissertation route | Yes | Yes | No | No | No | Yes | workflows | Keep distinct from academic research. |
| Management and IB Analysis | `03_workflows/Management_and_IB_Analysis.md` | Select relevant individual-to-global analysis levels | Yes | Yes | No | No | No | Yes | workflows | Add-on for reports/essays/cases where relevant. |
| Workflow Contract | `03_workflows/Workflow_Contract.md` | Required workflow sections and output discipline | Yes | Yes | No | No | No | Yes, distilled | core | Useful as a Project instruction rule. |
| Task Router | `03_workflows/Task_Router.md` | Task-to-workflow routing | Yes | Yes | No | No | No | Yes, distilled | core | Map only the MVP task set; no runtime is needed. |
| Chinese-to-English Drafting | `03_workflows/Chinese_to_English_Drafting.md` | Controlled bilingual drafting route | Yes | Yes | No | No | No | Optional | workflows | Useful only if the Project must support Chinese input; governed by AI policy. |
| Data Analysis | `03_workflows/Data_Analysis.md` | Authorised-data analysis chain | Yes | Yes | No | No | No | Optional | workflows | Out of requested MVP scope except later dissertation data analysis. |
| Dissertation and Career Loop | `03_workflows/Distinction_and_Career_Evidence_Loop.md` | Marks, feedback and career-evidence loop | Yes | Yes | No | No | No | No | exclude | Beyond requested MVP and includes persistent-record handling. |
| Group Project | `03_workflows/Group_Project.md` | Group-assignment process | Yes | Yes | No | No | No | No | exclude | Not a stated MVP task. |
| Presentation | `03_workflows/Presentation.md` | Presentation workflow | Yes | Yes | No | No | No | No | exclude | Not a stated MVP task. |
| Exam and Reflection | `03_workflows/Exam_and_Reflection.md` | Exam/reﬂection workflow | Yes | Yes | No | No | No | No | exclude | Not a stated MVP task. |
| Module Onboarding | `03_workflows/Module_Onboarding.md` | Import official module materials | Yes | Yes | No | No | No | No | exclude | Local module-management workflow. |
| Pre-arrival and Growth | `03_workflows/Prearrival_and_Growth.md` | Skills/readiness workflow | Yes | Yes | No | No | No | No | exclude | Not a stated MVP task. |
| Supervisor Meeting | `03_workflows/Supervisor_Meeting.md` | Feedback/meeting workflow | Yes | Yes | No | No | No | No | exclude | Depends on private feedback records. |
| Academic Output | `04_templates/Academic_Output.md` | Facts/Analysis/Suggestions/Gaps/Sources response shape | Yes | Yes | No | No | No | Yes | templates | Required universal response template. |
| Assignment Brief Analysis | `04_templates/Assignment_Brief_Analysis.md` | Brief-analysis output template | Yes | Yes | No | No | No | Yes | templates | Required. |
| Argument Map | `04_templates/Argument_Map.md` | Claim, theory, evidence, warrant, limitation structure | Yes | Yes | No | No | No | Yes | templates | Required for essay/report planning. |
| Paragraph Argument | `04_templates/Paragraph_Argument.md` | Claim–Evidence–Analysis–Link paragraph diagnostic | Yes | Yes | No | No | No | Yes | templates | Required drafting aid. |
| Reading Note | `04_templates/Reading_Note.md` | Single-source analysis record | Yes | Yes | No | No | No | Yes | templates | Required. |
| Claim–Evidence Matrix | `04_templates/research/Claim_Evidence_Matrix.md` | Claim support, challenge, fit, limits and actions | Yes | Yes | No | No | No | Yes | templates | Required. |
| Literature Synthesis | `04_templates/research/Literature_Synthesis.md` | Cross-source synthesis matrix | Yes | Yes | No | No | No | Yes | templates | Required. |
| Search Log | `04_templates/research/Search_Log.md` | Search protocol, iterations and limitations | Yes | Yes | No | No | No | Yes | templates | Required for literature-review/gap claims. |
| Research Question Card | `04_templates/research/Research_Question_Card.md` | Problem, gap, question and feasible-method record | Yes | Yes | No | No | No | Yes | templates | Required for methodology/dissertation planning. |
| Methodology Audit | `04_templates/research/Methodology_Audit.md` | Design fit, alternatives, ethics and limits | Yes | Yes | No | No | No | Yes | templates | Required. |
| Dissertation Status | `04_templates/Dissertation_Status.md` | Dissertation route, chain, progress and decisions | Yes | Yes | No | No | No | Yes | templates | Required. |
| Assessment Evidence Ledger | `04_templates/Assessment_Evidence_Ledger.md` | Rubric-to-claim/evidence/draft-location mapping | Yes | Yes | No | No | No | Yes | templates | Required for rubric audits. |
| Source Verification Log | `04_templates/Source_Verification_Log.md` | Metadata and source/quotation verification record | Yes | Yes | No | No | No | Yes | templates | Required for source/citation audit. |
| Submission Readiness | `04_templates/Submission_Readiness.md` | Final task, evidence, criticality, AI and admin checklist | Yes | Yes | No | No | No | Yes | templates | Required. |
| AI Use Record | `04_templates/AI_Use_Record.md` | Student AI-use and declaration record | Yes | Yes | No | No | No | Optional | templates | Include only if an assessment permits AI; never invent a local declaration. |
| Project Context | `04_templates/Project_Context.md` | Project identity, authoritative inputs, decisions and stage | Yes | Yes | No | No | No | Optional | templates | Useful as a chat intake form, but has local project-folder wording. |
| Auditor | `07_quality_control/Auditor.md` | Compliance, evidence, criticality and language audit | Yes | Yes | No | No | No | Yes | quality_control | Required. |
| Challenger | `07_quality_control/Challenger.md` | Test assumptions, alternatives, boundaries and implications | Yes | Yes | No | No | No | Yes | quality_control | Required. |
| Examiner Review | `07_quality_control/Examiner_Review.md` | Transparent rubric-aligned readiness review | Yes | Yes | No | No | No | Yes | quality_control | Required; not a mark prediction. |

## Formal files retained in the repository but not for this MVP

| File | Relative path | Purpose | Canonical | Active | Duplicate | Draft | Deprecated | Pack? | Suggested class | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| Knowledge README | `03_knowledge/README.md` | Knowledge-base navigation | Yes | Yes | No | No | No | No | exclude | Navigation only. |
| Module Import Guide | `02_institution/Module_Import_Guide.md` | Local official-module import procedure | Yes | Yes | No | No | No | No | exclude | References local folders and workflow. |
| Modules README | `02_institution/modules/README.md` | Local module-profile guidance | Yes | Yes | No | No | No | No | exclude | Navigation only. |
| Research templates | `04_templates/research/Data_Analysis_Plan.md`, `Qualitative_Analysis_Record.md`, `Quantitative_Result_Record.md` | Data-analysis records | Yes | Yes | No | No | No | No | exclude | Not required for planning-only MVP. |
| Knowledge-object templates | `04_templates/knowledge_objects/Concept_Card.md`, `Evidence_Record.md`, `Literature_Gap.md`, `Theory_Card.md` | Persistent knowledge records | Yes | Yes | No | No | No | No | exclude | Useful only with the repository knowledge graph. |
| Feedback/career templates | `04_templates/Academic_to_Career_Evidence_Card.md`, `Feedback_Log.md`, `Marks_and_Feedback_Intelligence.md`, `Module_Performance_Contract.md`, `Module_Profile.md`, `Module_Source_Register.md`, `Option_and_Dissertation_Decision_Record.md`, `Skill_Gap_Tracker.md` | Persistent feedback, module, career and skills records | Yes | Yes | No | No | No | No | exclude | Beyond MVP and often contains private or task-specific data. |
| Bug Tracking | `07_quality_control/Bug_Tracking.md` | Internal defect log | Yes | Yes | No | No | No | No | exclude | System maintenance. |
| Calibration | `07_quality_control/Calibration.md` | System calibration log | Yes | Yes | No | No | No | No | exclude | System maintenance. |
| Stress Test | `07_quality_control/Stress_Test.md` | Internal stress-test protocol | Yes | Yes | No | No | No | No | exclude | System testing. |
| System Audit | `07_quality_control/System_Audit.md` | Internal system-release audit | Yes | Yes | No | No | No | No | exclude | System maintenance, not student-facing audit. |
| Changelog | `CHANGELOG.md` | Version history | Yes | Yes | No | No | No | No | exclude | Release history. |
| Repository README | `README.md` | Repository introduction and local setup | Yes | Yes | No | No | No | No | exclude | Contains local setup and has character-encoding corruption in this environment. |

## Project, memory, and test material — explicitly excluded from upload

| File(s) | Relative path | Purpose | Canonical | Active | Duplicate | Draft | Deprecated | Pack? | Suggested class | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| Project README | `05_projects/README.md` | Local project-folder guidance | Yes, local | Yes | No | No | No | No | exclude | Project-local navigation. |
| Pre-arrival README/context | `05_projects/pre_arrival_foundation/README.md`; `05_projects/pre_arrival_foundation/Project_Context.md` | Current student preparation project | Yes, project only | Yes | No | No | No | No | exclude | Project-scoped, not reusable instruction. |
| Project notes | `05_projects/pre_arrival_foundation/notes/Evidence_Record_GibsonEtAl2021_Community_RBV.md`; `Reading_Note_Gibson_et_al_2021.md`; `Research_Plan.md`; `Skill_Baseline_2026-07-24.md` | Student/source-specific study records | Yes, project only | Yes | No | Possibly working | No | No | exclude | May include licensed-source details and personal learning information. |
| Memory policy | `06_memory/Memory_Policy.md` | Repository memory governance | Yes | Yes | No | No | No | No | exclude | The MVP intentionally has no memory manager; retain only the privacy principle in core instructions. |
| Memory records | `06_memory/Academic_Growth_Log.md`; `Dissertation_Idea_Bank.md`; `Intellectual_Evolution_Log.md`; `Knowledge_Graph_Map.md`; `Research_Interests.md`; `Writing_Weaknesses.md` | Personal learning, ideas and preferences | Yes, personal scope | Yes | No | Working records | No | No | exclude | Private/personal and outside MVP scope. |
| QA test cases | `07_quality_control/test_cases/Correlation_Causation.md`; `Cross_Project_Contamination.md`; `Dissertation_Ethics.md`; `Fabricated_References.md`; `Rubric_Evidence_Traceability.md`; `Unsupported_Literature_Gap.md` | Regression tests for the local system | Yes | Yes | No | No | No | No | exclude | Do not upload as Project knowledge. |
| Routing scenarios | `tests/Task_Routing_Scenarios.md` | Local routing test specification | Yes | Yes | No | No | No | No | exclude | Test fixture, not instruction. |

## Per-file supplement for grouped exclusions

The following rows make the exclusions above explicit at file level. Their grouped rows provide the fuller rationale.

| File | Relative path | Purpose | Canonical | Active | Duplicate | Draft | Deprecated | Pack? | Suggested class | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| Data Analysis Plan | `04_templates/research/Data_Analysis_Plan.md` | Data-analysis planning record | Yes | Yes | No | No | No | No | exclude | Not required for planning-only MVP. |
| Qualitative Analysis Record | `04_templates/research/Qualitative_Analysis_Record.md` | Qualitative-result record | Yes | Yes | No | No | No | No | exclude | Not a requested MVP output. |
| Quantitative Result Record | `04_templates/research/Quantitative_Result_Record.md` | Quantitative-result record | Yes | Yes | No | No | No | No | exclude | Not a requested MVP output. |
| Concept Card | `04_templates/knowledge_objects/Concept_Card.md` | Persistent concept record | Yes | Yes | No | No | No | No | exclude | Repository knowledge-object workflow. |
| Evidence Record | `04_templates/knowledge_objects/Evidence_Record.md` | Persistent evidence record | Yes | Yes | No | No | No | No | exclude | Repository knowledge-object workflow. |
| Literature Gap | `04_templates/knowledge_objects/Literature_Gap.md` | Persistent literature-gap record | Yes | Yes | No | No | No | No | exclude | Repository knowledge-object workflow. |
| Theory Card | `04_templates/knowledge_objects/Theory_Card.md` | Persistent theory record | Yes | Yes | No | No | No | No | exclude | Repository knowledge-object workflow. |
| Academic-to-Career Evidence Card | `04_templates/Academic_to_Career_Evidence_Card.md` | Career-evidence record | Yes | Yes | No | No | No | No | exclude | Beyond requested MVP. |
| Feedback Log | `04_templates/Feedback_Log.md` | Lecturer/supervisor feedback record | Yes | Yes | No | No | No | No | exclude | Private task history. |
| Marks and Feedback Intelligence | `04_templates/Marks_and_Feedback_Intelligence.md` | Marks/feedback analysis record | Yes | Yes | No | No | No | No | exclude | Private task history. |
| Module Performance Contract | `04_templates/Module_Performance_Contract.md` | Module requirement record | Yes | Yes | No | No | No | No | exclude | Requires current official module sources. |
| Module Profile | `04_templates/Module_Profile.md` | Official module profile | Yes | Yes | No | No | No | No | exclude | Local module state. |
| Module Source Register | `04_templates/Module_Source_Register.md` | Module-source provenance record | Yes | Yes | No | No | No | No | exclude | Local module state. |
| Option and Dissertation Decision Record | `04_templates/Option_and_Dissertation_Decision_Record.md` | Student decision record | Yes | Yes | No | No | No | No | exclude | Personal decision history. |
| Skill Gap Tracker | `04_templates/Skill_Gap_Tracker.md` | Personal skill record | Yes | Yes | No | No | No | No | exclude | Personal learning state. |
| Knowledge README | `03_knowledge/README.md` | Knowledge-base navigation | Yes | Yes | No | No | No | No | exclude | Navigation only. |
| Module Import Guide | `02_institution/Module_Import_Guide.md` | Local module import procedure | Yes | Yes | No | No | No | No | exclude | Local workflow. |
| Modules README | `02_institution/modules/README.md` | Module-profile navigation | Yes | Yes | No | No | No | No | exclude | Navigation only. |
| Bug Tracking | `07_quality_control/Bug_Tracking.md` | Internal defect log | Yes | Yes | No | No | No | No | exclude | System maintenance. |
| Calibration | `07_quality_control/Calibration.md` | Internal calibration log | Yes | Yes | No | No | No | No | exclude | System maintenance. |
| Stress Test | `07_quality_control/Stress_Test.md` | Internal stress-test protocol | Yes | Yes | No | No | No | No | exclude | System maintenance. |
| System Audit | `07_quality_control/System_Audit.md` | Internal system-release audit | Yes | Yes | No | No | No | No | exclude | System maintenance. |
| Changelog | `CHANGELOG.md` | Version history | Yes | Yes | No | No | No | No | exclude | Release history. |
| Repository README | `README.md` | Repository introduction/setup | Yes | Yes | No | No | No | No | exclude | Local setup; encoding needs repair before any reuse. |
| Project README | `05_projects/README.md` | Project-folder guidance | Yes, local | Yes | No | No | No | No | exclude | Local navigation. |
| Pre-arrival README | `05_projects/pre_arrival_foundation/README.md` | Current preparation project guide | Yes, project | Yes | No | No | No | No | exclude | Project-scoped. |
| Pre-arrival Context | `05_projects/pre_arrival_foundation/Project_Context.md` | Current preparation project context | Yes, project | Yes | No | No | No | No | exclude | Project-scoped. |
| Gibson Evidence Record | `05_projects/pre_arrival_foundation/notes/Evidence_Record_GibsonEtAl2021_Community_RBV.md` | Source-specific evidence record | Yes, project | Yes | No | Working | No | No | exclude | Source/project-specific. |
| Gibson Reading Note | `05_projects/pre_arrival_foundation/notes/Reading_Note_Gibson_et_al_2021.md` | Source-specific reading note | Yes, project | Yes | No | Working | No | No | exclude | Source/project-specific. |
| Research Plan | `05_projects/pre_arrival_foundation/notes/Research_Plan.md` | Student study/research plan | Yes, project | Yes | No | Working | No | No | exclude | Project-scoped. |
| Skill Baseline | `05_projects/pre_arrival_foundation/notes/Skill_Baseline_2026-07-24.md` | Student skill baseline | Yes, personal | Yes | No | Working | No | No | exclude | Personal learning information. |
| Academic Growth Log | `06_memory/Academic_Growth_Log.md` | Personal growth history | Yes, personal | Yes | No | Working | No | No | exclude | Personal memory. |
| Dissertation Idea Bank | `06_memory/Dissertation_Idea_Bank.md` | Personal dissertation ideas | Yes, personal | Yes | No | Working | No | No | exclude | Personal memory. |
| Intellectual Evolution Log | `06_memory/Intellectual_Evolution_Log.md` | Personal intellectual-development record | Yes, personal | Yes | No | Working | No | No | exclude | Personal memory. |
| Knowledge Graph Map | `06_memory/Knowledge_Graph_Map.md` | Persistent knowledge-map record | Yes, personal | Yes | No | Working | No | No | exclude | Requires repository memory workflow. |
| Research Interests | `06_memory/Research_Interests.md` | Personal research-interest record | Yes, personal | Yes | No | Working | No | No | exclude | Personal memory. |
| Writing Weaknesses | `06_memory/Writing_Weaknesses.md` | Personal writing-development record | Yes, personal | Yes | No | Working | No | No | exclude | Personal memory. |
| Correlation/Causation Test | `07_quality_control/test_cases/Correlation_Causation.md` | Regression fixture | Yes | Yes | No | No | No | No | exclude | Local test. |
| Cross-Project Contamination Test | `07_quality_control/test_cases/Cross_Project_Contamination.md` | Regression fixture | Yes | Yes | No | No | No | No | exclude | Local test. |
| Dissertation Ethics Test | `07_quality_control/test_cases/Dissertation_Ethics.md` | Regression fixture | Yes | Yes | No | No | No | No | exclude | Local test. |
| Fabricated References Test | `07_quality_control/test_cases/Fabricated_References.md` | Regression fixture | Yes | Yes | No | No | No | No | exclude | Local test. |
| Rubric Traceability Test | `07_quality_control/test_cases/Rubric_Evidence_Traceability.md` | Regression fixture | Yes | Yes | No | No | No | No | exclude | Local test. |
| Unsupported Gap Test | `07_quality_control/test_cases/Unsupported_Literature_Gap.md` | Regression fixture | Yes | Yes | No | No | No | No | exclude | Local test. |

## Requested-location findings

| Requested item | Finding |
|---|---|
| Academic Constitution | **Absent by name.** Closest sources: `AGENTS.md`, `01_governance/Policy_Charter.md`, and `01_governance/Academic_Integrity.md`. |
| Governance and Policy | `01_governance/Policy_Charter.md`; `Academic_Integrity.md`; `AI_Use_in_Assessment.md`; `Evidence_and_Uncertainty.md`; `Quality_Gates.md`; `policies/POL-001_Integrity.md`; `POL-020_Criticality.md`; `POL-030_Citation_Discipline.md`. |
| AOCOM | **Absent.** No file or defined acronym was found. |
| Essay Workflow | **Absent as a standalone workflow.** Use `03_workflows/Assignment_Analysis.md`, `Draft_Review.md`, `Assessment_Review.md`, and `Project_Lifecycle.md`. |
| Report Workflow | **Absent as a standalone workflow.** Same route as essay, with `Management_and_IB_Analysis.md` when relevant. |
| Literature Review Workflow | `03_workflows/Literature_Search_and_Synthesis.md`; supporting `Literature_Analysis.md` and `Literature_Input_Pipeline.md`. |
| Dissertation Workflow | `03_workflows/Dissertation.md`; tracks in `03_workflows/dissertation_tracks/`. |
| Methodology Workflow | `03_workflows/Research_Design.md`; supporting `04_templates/research/Methodology_Audit.md`. |
| Harvard Guide | **Absent.** Closest rules: `01_governance/policies/POL-030_Citation_Discipline.md`, `04_templates/Source_Verification_Log.md`, and the citation gates in `Submission_Readiness.md`. |
| UK MSc Writing Standard | **Absent.** Closest source: `03_knowledge/academic_skills/Criticality_and_Academic_English.md`; it is a toolkit, not a formal UK MSc standard. |
| Critical Analysis Guide | **No file with that title.** Closest sources: `Criticality_and_Academic_English.md`, `Criticality_Model.md`, and `POL-020_Criticality.md`. |
| Research Methods Guide | **No file with that title.** Closest source: `03_knowledge/research_methods/Methods_and_Statistics_Foundations.md`; primary workflow is `Research_Design.md`. |
| Essay templates | **No essay-specific template.** Use `Argument_Map.md`, `Paragraph_Argument.md`, `Academic_Output.md`, and `Assessment_Evidence_Ledger.md`. |
| Report templates | **No report-specific template.** Use the same generic templates plus `Management_and_IB_Analysis.md` where relevant. |
| Literature Review templates | `04_templates/research/Search_Log.md`, `Literature_Synthesis.md`, and `Claim_Evidence_Matrix.md`; source record `Reading_Note.md`. |
| Proposal templates | **No proposal-specific template.** Closest: `Research_Question_Card.md` and `Methodology_Audit.md`. |
| Dissertation templates | `04_templates/Dissertation_Status.md`, plus `Research_Question_Card.md`, `Methodology_Audit.md`, `Search_Log.md`, and `Literature_Synthesis.md`. |
| Auditor / Challenger | `07_quality_control/Auditor.md`; `07_quality_control/Challenger.md`. |
| Academic Integrity | `01_governance/Academic_Integrity.md` and `01_governance/policies/POL-001_Integrity.md`. |
| Claim–Evidence rules | `01_governance/Evidence_and_Uncertainty.md`; `POL-030_Citation_Discipline.md`; `04_templates/research/Claim_Evidence_Matrix.md`; `Assessment_Evidence_Ledger.md`. |
| Submission Checklist | `04_templates/Submission_Readiness.md`; supported by `03_workflows/Project_Lifecycle.md` and the three QC files. |

## Duplicate, draft, and deprecated findings

- No byte-identical Markdown duplicates were found.
- No files are explicitly labelled `deprecated`, `backup`, `archive`, `old`, or versioned copies.
- `00_system/How_to_Use_SAIS.md` and `00_system/SAIS_Usage_Conversation_Notes.md` are untracked. The former is a useful candidate guide; the latter is an untracked, garbled, overlapping working note and should be excluded.
- There are substantive overlaps rather than duplicates: Academic Integrity/POL-001, Citation Discipline/Source Verification/Submission Readiness, criticality policy/model/toolkit, and the MIB reference/profile/institutional model.
- `00_system/Operational_Readiness.md` is not marked deprecated, but its stated v1.4 baseline is stale against v1.6 and should not be uploaded.
