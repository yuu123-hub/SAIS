# SAIS Operational Readiness

- Version assessed: v1.4.0
- Audit date: 24 July 2026
- Scope: pre-arrival local Markdown + Codex system
- Current judgement: No known Critical or High system defect after the v1.4 audit

## Verified operational capabilities

| Capability | Status | Primary control |
| --- | --- | --- |
| Automatic task routing | Operational | `AGENTS.md`, `03_workflows/Task_Router.md` |
| Assessed-project lifecycle and scaffolding | Operational | `Project_Lifecycle.md`, `New-SAISProject.ps1` |
| Assignment brief and rubric analysis | Operational | `Assignment_Analysis.md`, `Assessment_Review.md` |
| Single-source reading and evidence extraction | Operational | `Literature_Analysis.md`, `Literature_Input_Pipeline.md` |
| Reproducible literature search and synthesis | Operational | `Literature_Search_and_Synthesis.md`, research templates |
| Claim, citation, and source verification | Operational | governance policies, source and claim–evidence logs |
| Chinese explanation and controlled English support | Operational with AI-policy gate | `Chinese_to_English_Drafting.md` |
| Draft, presentation, group, exam, and reflection support | Operational | routed workflows |
| Research design and data analysis | Operational | `Research_Design.md`, `Data_Analysis.md` |
| Dual-track dissertation management | Operational | dissertation workflow and track files |
| Supervisor feedback and scoped memory | Operational | feedback workflow and `Memory_Policy.md` |
| Official module onboarding | Operational when official inputs exist | `Module_Onboarding.md`, `New-SAISModule.ps1` |
| Quality control and regression testing | Operational | Auditor, Challenger, Examiner, system tests |
| Safe automatic Git completion | Operational | Git completion policy and `Test-GitScope.ps1` |

## External inputs still required

These are not repairable system defects:

- Current programme/module handbooks, timetables, assessment briefs, rubrics, deadlines, and module-specific AI-use rules.
- Supervisor directions and written ethics approval when applicable.
- Legal access to journal databases and full texts.
- Actual datasets, codebooks, software output, or de-identified qualitative material for data analysis.
- Student-owned ideas, judgements, revisions, and final authorship decisions.
- Confirmation in GitHub settings that repository visibility is `Private`.
- Zotero installation and the student's chosen citation-key convention.

## Known boundaries

- SAIS cannot guarantee a Distinction or predict a marker reliably without the current rubric and complete work.
- General SAIS diagnostics are not unpublished Sheffield marking rules.
- Web and programme facts can change; official current materials override cached references.
- Git-ignored source documents and sensitive materials are not backed up by GitHub and need a separate secure backup.
- A language-polished passage is not automatically compliant, accurate, or submission-ready.
- Data-analysis conclusions require actual observed data/output and a defensible design.

## Re-audit triggers

Re-run `scripts/Test-SAIS.ps1` and the System Audit when:

- new official programme/module information arrives;
- a workflow, policy, template, or script changes;
- a real assessment reveals a routing or quality failure;
- lecturer/supervisor feedback contradicts a current rule;
- a new data type, AI policy, or assessment format is introduced.
