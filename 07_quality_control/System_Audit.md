# SAIS System Audit

## Purpose

Detect material defects in SAIS itself rather than judging an individual academic output.

## Audit triggers

- Before each functional version is committed.
- After a University/module policy change.
- After a routing, privacy, integrity, or citation failure.
- After repeated lecturer/supervisor feedback reveals a system pattern.
- At the end of each semester.

## Audit domains

1. **Architecture and links** — required files exist; local links and router references resolve; registry IDs are unique.
2. **Workflow contracts** — every executable workflow exposes Task Context, Required Inputs, Method, Output, Gaps, and Next Action.
3. **Task coverage** — brief, draft, literature, presentation, group, exam/reflection, feedback, proposal, dissertation, module onboarding, data analysis, and bilingual support route correctly.
4. **Governance** — integrity, AI use, uncertainty, evidence, memory scope, and current task rules have explicit precedence.
5. **Institutional accuracy** — Sheffield-specific claims have current official provenance and provisional/historical data is labelled.
6. **Privacy and Git** — source documents and sensitive project material are ignored by default; staged files pass `Test-GitScope.ps1`.
7. **Failure recovery** — missing inputs produce precise gaps and next actions rather than fabricated completion.
8. **Regression protection** — each material defect has a test case or automated check.
9. **Operational usability** — a student can create a project/module, locate authoritative context, and follow the lifecycle without remembering hidden steps.

## Severity

| Severity | Meaning | Release action |
| --- | --- | --- |
| Critical | integrity, confidentiality, destructive, or systemic false-authority risk | block release |
| High | major task cannot complete safely or routes incorrectly | block release |
| Medium | bounded inconsistency, maintainability, or incomplete safeguard | fix or document with owner |
| Low | wording, convenience, or non-blocking polish | may defer |

## Closure criteria

A version is operationally ready when:

- no known Critical or High defect remains;
- automated tests and `git diff --check` pass;
- sensitive staged paths are absent or explicitly approved;
- external missing inputs are documented rather than represented as system defects; and
- the version, changelog, registry, and readiness record agree.

This is not proof that no future defect can exist. It is a reproducible statement that no material defect is currently known within the tested scope.
