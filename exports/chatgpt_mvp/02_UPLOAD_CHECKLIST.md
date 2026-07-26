# SAIS ChatGPT MVP: Upload Checklist

- SAIS MVP Version: 0.1.0
- Document Status: Canonical-source export
- Document Type: Upload control
- Target Institution: The University of Sheffield
- Target Programme: Management and International Business MSc
- Source Files: `00_system/Data_Governance.md`; `03_workflows/Project_Lifecycle.md`; `04_templates/Source_Verification_Log.md`; `04_templates/Submission_Readiness.md`
- Source Versions: SAIS v1.6.0
- Purpose: Check a complete, safe and usable Project upload.
- Applicable Tasks: Pack installation and task intake
- Authority Level: Operational control
- Known Gaps: Current assessment materials must be supplied separately for each task.

## Upload to ChatGPT Project Knowledge

Upload only these **32 Project Knowledge files**:

- `00_START_HERE.md`
- `core/*.md`
- `workflows/*.md`
- `knowledge/*.md`
- `templates/*.md`
- `quality_control/*.md`
- `VERSION.md`

## Local-only setup and test files

Do not upload these six files as Project Knowledge:

- `README_FOR_CHATGPT_PROJECT.md` — local setup guide; do not upload as Project Knowledge.
- `01_PROJECT_INSTRUCTIONS.txt` — copy its full contents into the ChatGPT Project Instructions field; do not upload it as Project Knowledge.
- `02_UPLOAD_CHECKLIST.md`
- `03_DO_NOT_UPLOAD.md`
- `04_SMOKE_TEST_PROMPT.txt`
- `05_EXPECTED_SMOKE_TEST_RESULT.md`

## Before upload

- [ ] All files are UTF-8 Markdown or plain text and open correctly.
- [ ] Every Markdown file has the standard SAIS MVP header.
- [ ] Composite documents name their source files and use `Export-only attributed composite` status.
- [ ] No file claims that a composite is an original canonical repository module.
- [ ] The Harvard guide records University of Sheffield authority, Summer 2025 review status, and its source URL warning.
- [ ] `00_system/How_to_Use_SAIS.md` and `00_system/SAIS_Usage_Conversation_Notes.md` are absent.
- [ ] `README_FOR_CHATGPT_PROJECT.md` and the five other local-only setup/test files are absent from Project Knowledge.
- [ ] No `source/`, repository clone, runtime code, Git metadata, tests, logs, or hidden files are included.
- [ ] No project drafts, feedback, personal memory, raw data, participant information, passwords, access tokens or API keys are included.

## Task-time uploads, not default pack content

Only upload task material when it is necessary and authorised: current brief, rubric, learning outcomes, module handbook extract, source text, draft, reference list, data output, ethics/supervisor instruction, or assessment AI-use rule. Remove personal identifiers and confidential material where possible.

## Post-upload check

- [ ] Ask the smoke-test prompt exactly as supplied.
- [ ] Compare the response with `05_EXPECTED_SMOKE_TEST_RESULT.md`.
- [ ] Confirm the Project does not claim to be a Codex Runtime or to have access to files that were not uploaded.
