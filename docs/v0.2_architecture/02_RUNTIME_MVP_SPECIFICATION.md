# SAIS v0.2：Runtime MVP Specification

## 範圍與目的

**Proposed；未實作。** 最小 Runtime 只做下列可追溯流程：

```text
Task
→ 選擇必要模組
→ 安全讀取模組
→ 組裝 Context
→ 產生 Prompt Package
→ 產生 Trace
```

它不得呼叫模型、不得自動寫 essay、不得自動提交作業、不得建立 multi-agent、vector database 或 long-term memory。Runtime 的輸出是供人或上層工具審核的 context/prompt package，不是 academic answer。

## 核心資料物件

| 物件 | 必要欄位 | 可選欄位 | 驗證規則與錯誤條件 | provenance 要求 |
|---|---|---|---|---|
| `TaskRequest` | `task_id`、`task_type`、`user_request`、`created_at` | assignment context reference、declared AI policy、budget | task type 必須受支援；禁止將未提供的 brief/rubric 標作已知 | 輸入來源、時間、敏感性標記 |
| `TaskProfile` | `task_type`、required inputs、mandatory modules、quality gates | recommended/forbidden modules、output type | 必須有 missing-input 與 AI-policy behaviour；不得與 authority hierarchy 衝突 | profile version、registry source |
| `ModuleDescriptor` | `module_id`、version、status、authority level、canonical path | dependencies、conflicts、export eligibility | canonical path 必須存在且 status 可用；composite 必須標示 | canonical path、hash/版本、source status |
| `ResolutionResult` | selected/excluded modules、missing inputs、warnings | fallback rationale | mandatory module 或 required input 缺失時不可宣稱 resolution 完整 | profile、registry、selection reason |
| `ContextPackage` | ordered modules、assignment context、budget outcome | omitted recommended modules | mandatory context 不得截斷；超 budget 必須失敗 | 每段 module/version/path、omission reason |
| `PromptPackage` | stable prefix、dynamic suffix、module labels、checksum | delivery-format hints | 核心順序固定；不得混入未核准內容 | context checksum、module list、build timestamp |
| `ExecutionTrace` | task ID、selected/excluded modules、warnings、final status | duration、omitted sections、budget | 不得記錄完整作業正文、完整聊天、私人資料或 credentials | 最小必要 metadata、redaction policy |
| `RuntimeResult` | status、resolution、context、prompt、trace | user-facing gap message | success 只代表流程完整，非 academic quality/grade | all upstream provenance references |

## 執行流程

```text
Task request
→ Task validation
→ Task profile selection
→ Dependency resolution
→ Approved module loading
→ Context budgeting
→ Prompt assembly
→ Quality requirements
→ Trace output
```

最小 pseudocode：

```text
validate(request)
profile = select_profile(request.task_type)
resolution = resolve(profile, registry, request)
if resolution.missing_mandatory: return blocked_result
context = assemble_without_summarising_canonical_content(resolution)
if context.mandatory_over_budget: return blocked_result
prompt = assemble_in_fixed_order(context)
return result_with_trace(prompt, context, resolution)
```

任何 blocked result 必須說明缺少何項 input、哪一項 quality/authority gate 阻擋、以及最小下一步；不得偷偷以 generic guidance 代替 required material。

## Task Profiles

| Task type | Required inputs | Mandatory modules | Recommended modules | Forbidden modules | Quality gates | Missing-input / AI-policy behaviour | Expected output |
|---|---|---|---|---|---|---|---|
| `brief_analysis` | brief、rubric/criteria、AI rule | governance、assignment workflow | relevant template | unrelated draft workflow | brief/rubric precedence | 缺 brief 則只列需要材料；AI unknown 時不產 submission prose | brief analysis + gaps |
| `essay_planning` | brief、rubric、topic/ideas、AI rule | governance、essay workflow | writing standard、template | submission verdict alone | argument/evidence plan | 缺 rubric 時標示限制；AI-Free 僅 coaching | outline/plan |
| `essay_revision` | draft、brief、rubric、AI rule | governance、essay workflow、QC | writing/critical guides | invented source support | integrity/citation checks | 缺 draft 不假裝 revision；AI unknown 不重寫 submission text | revision feedback |
| `essay_audit` | draft、brief、rubric、references、AI rule | submission audit、QC | essay workflow | grade prediction | blocking/major/advisory | 缺 rubric 使用 readiness language | audit findings |
| `report_planning` | brief、rubric、case context、AI rule | report workflow | MIB context、template | irrelevant level analysis | level/recommendation fit | 缺 case context 明示 assumptions | report plan |
| `report_audit` | draft、brief、rubric、references | submission audit、QC | report workflow | unsupported recommendations | evidence/recommendation chain | 缺 evidence list 要求 verification | audit findings |
| `literature_review` | topic/question、search scope、sources | literature workflow | literature template、claim-evidence | unsupported gap claim | search/screening limitations | 缺 recorded scope 不宣稱 exhaustive/gap | synthesis plan |
| `source_analysis` | full text/accessibility、metadata、purpose | source-analysis workflow | claim-evidence guide | invented page/quote | verification and limitation | 缺 source text 僅提出 analysis plan | source record |
| `claim_evidence_mapping` | claims、sources/evidence | AOCOM Lite、claim-evidence guide | QC claim check | fabricated citation | claim/source separation | evidence absent 標為 gap | claim map |
| `methodology_planning` | question/brief、constraints、ethics inputs | methodology workflow | research methods/proposal template | data collection recommendation without ethics context | design-fit/feasibility | 缺 ethics/supervisor input 先列問題 | method plan |
| `dissertation_planning` | project idea、programme rules、supervisor context | dissertation workflow | methodology/template | conflating research and consulting tracks | track selection/feasibility | 缺 official rules 不推測 | dissertation plan |
| `harvard_check` | reference details、source type、quoted text if relevant | Harvard guide、citation check | official Library page | made-up reference details | freshness/verification | 不明 source type 時要求官方 guide | referencing check |
| `submission_audit` | draft、brief、rubric、references、AI rule | submission audit、all relevant QC | task workflow | numeric grade guarantee | blocking checks | 缺 required inputs 則不能 give final-ready verdict | readiness audit |

所有 task profile 都必須讓現行 official assessment material 與 explicit supervisor direction 覆蓋 SAIS general guidance。

## Module Model

必要 schema 概念：`module_id`、`version`、`status`、`authority_level`、`required_dependencies`、`recommended_dependencies`、`optional_dependencies`、`conflicts`、`load_order`、`canonical_source_path`、`export_eligibility`。

```yaml
module_id: workflow.essay
version: proposed-registry-version
status: active
authority_level: workflow
required_dependencies: [governance.integrity]
recommended_dependencies: [knowledge.writing_standard]
optional_dependencies: [template.essay]
conflicts: []
load_order: 40
canonical_source_path: 03_workflows/Essay_Workflow.md
export_eligibility: true
```

這只是 data model example，不是正式設定檔。`canonical_source_path` 必須指向 repository；export path 不能取代它。

## Context Management 規則

1. Mandatory context 不得截斷。
2. Optional context 最先排除。
3. 再排除低優先級 Recommended context。
4. Mandatory context 超過 budget 時必須明確失敗。
5. 不得自動摘要 Canonical 規則以塞入 budget。
6. 所有 omission 必須在 trace 記錄原因。
7. 不得假設固定模型 context window；budget 必須由本次執行明示。
8. Assignment context 與 Canonical context 必須分離，且 assignment material 不得污染 repository source。

## Prompt Assembly

固定順序如下：

```text
Core governance
Institutional and integrity rules
Operational definitions
Task-specific workflow
Relevant knowledge
Template
Quality control
Assignment context
User request
```

- **Stable prefix**：前七層中的核准模組與 module/version labels。
- **Dynamic suffix**：assignment context 與本次 user request。
- **Provenance**：每個載入 module 保留 canonical path、version/status 與選取理由。
- **Prompt checksum**：對有序 module 清單與 dynamic metadata 產生可比較識別，不等同收集私密 prompt 全文。
- **分離原則**：dynamic metadata 可變；核心規則不得因任務方便而被重寫。

## Quality Control 與 Trace

Runtime 必須能將 Auditor、Challenger、Academic Integrity Check、Citation Integrity Check、Claim-Evidence Check、Submission Checklist 納入 profile 的品質要求。結果分類為 **Blocking**、**Major**、**Advisory**；任何分類均不得轉換為成績保證。

未來 `ExecutionTrace` 可記錄 Task ID、selected/excluded modules、versions、context budget、omitted sections、warnings、quality gates、final status 與 execution duration。它不得記錄完整作業正文、完整聊天、私人資料或 credentials。
