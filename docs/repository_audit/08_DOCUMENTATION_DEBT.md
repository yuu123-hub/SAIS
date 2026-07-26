# Documentation Debt

| ID | Evidence | Reason / Impact | Suggested fix | Priority |
|---|---|---|---|---|
| DD-01 | Root README and some legacy Chinese text display encoding-garbled in current PowerShell default output | Readability/tooling risk; content encoding itself was not rewritten in this audit | Verify declared UTF-8/encoding policy and render in target tools | Medium |
| DD-02 | 52 export headers but no equivalent Canonical contract | Status/ownership cannot be consistently audited | Define minimal class-specific metadata policy when triggered | Medium |
| DD-03 | Version facts repeated in Full, Plus, local and docs | Manual update can drift | Single controlled manifest only if manual drift recurs | Medium |
| DD-04 | `03_knowledge` and `03_workflows` share numeric prefix | Minor navigation ambiguity | Preserve compatibility; plan migration only with evidence | Low |
| DD-05 | No external-link/anchor validation in this audit | Current relative links pass, future docs can regress | Add proportionate validation when link volume grows | Low |

沒有已證實的未使用或 deprecated tracked folder；`build/` 是未追蹤審查產物，非 repository 文件債務。
