# Workflow: Assessed Project Lifecycle

## Purpose

Keep an assessed task traceable from initial brief to final submission without mixing verified requirements, working ideas, drafts, and private material.

## Task Context

A named assessed project and its current lifecycle state, authoritative task materials, project records, and local privacy classification.

## Required inputs

- Project name and assessment type.
- Current assignment brief, rubric, learning outcomes, deadline, and word/time limit when available.
- Assessment-specific AI-use status.
- Module profile when officially available.

## Method

### Lifecycle states

`Intake → Brief analysed → Researching → Argument designed → Drafting → Reviewing → Submission check → Closed`

Record the current state and next action in `Project_Context.md`. Do not advance a state merely because prose exists; advance it only when the corresponding gate below is met.

### State gates

### 1. Intake

- Create the project folder and `Project_Context.md`.
- Record the brief, rubric, deadline, constraints, and AI-use status.
- Classify absent material as `required now`, `needed before drafting`, or `needed before submission`.

Gate: the deliverable and immediate next action are understood.

### 2. Brief analysed

- Apply `Assignment_Analysis.md`.
- Convert command words and rubric criteria into success conditions.
- Record questions requiring lecturer clarification.

Gate: a defensible task interpretation and evidence plan exist.

### 3. Researching

- Apply `Literature_Input_Pipeline.md` to each core source.
- Apply `Literature_Search_and_Synthesis.md` when constructing an evidence base rather than analysing one supplied source.
- Maintain `Source_Verification_Log.md`.
- Maintain `Search_Log.md` and `Claim_Evidence_Matrix.md` where the task involves multiple sources.
- Separate source claims, evidence, limitations, and the student's interpretation.

Gate: central claims have identifiable evidence or are explicitly marked as gaps.

### 4. Argument designed

- Build an argument map.
- Test alternative explanations and counter-evidence.
- Confirm that the proposed structure answers the brief rather than merely covering the topic.

Gate: each major section has a purpose, claim, evidence need, and critical move.

### 5. Drafting

- Follow the applicable AI-use mode.
- Preserve the student's decisions and source trail.
- Keep working drafts in `drafts/`, which is local and Git-ignored.

Gate: a complete draft exists and all provisional citations are identifiable.

### 6. Reviewing

- Run Auditor, Challenger, and rubric-aligned Examiner Review proportionately.
- Prioritise essential corrections before stylistic improvements.
- Re-check claims after substantial rewrites.

Gate: no unresolved mandatory integrity, evidence, or task-alignment failure remains.

### 7. Submission check

- Complete `Submission_Readiness.md`.
- Verify administrative requirements, references, declarations, file format, and deadline/timezone.
- Treat the readiness result as a checklist judgement, not a grade prediction.

Gate: verdict is `Ready` or the student knowingly accepts every recorded residual risk.

### 8. Closed

- Record submitted version and date locally.
- Capture feedback later in `Feedback_Log.md`.
- Propose, but do not automatically write, reusable lessons to academic memory.

## Output

- Current lifecycle state.
- Completed gate evidence.
- Blocking and non-blocking gaps.
- One smallest useful next action.

## Gaps

Record every unpassed state gate, missing authoritative input, unresolved decision, evidence risk, policy uncertainty, or submission dependency.

## Next Action

Complete the smallest action required to pass the current lifecycle gate.
