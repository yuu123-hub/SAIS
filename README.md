# SAIS v1 — Sheffield Academic Intelligence System

SAIS 是一套在本機 Markdown repository 運作、由 Codex 協助執行的學術工作系統。它以 distinction 為目標，但不保證成績；它協助你建立理解、研究、論證、寫作與修訂能力，而不是取代你的作者責任。

## 你可以怎麼使用 SAIS

### 讀一篇英文論文

把 PDF 放在 `05_projects/<project>/materials/`，然後說：

```text
Explain this paper in simple Chinese, create a Reading Note, and show me the strongest limitation.
```

SAIS 會拆分研究問題、理論、方法、發現、限制、可用證據和頁碼；你再讀原文的關鍵部分並形成自己的判斷。

### 用中文建立論點，再轉成英文

你可以先用中文寫 Claim、Reason、Evidence、Limitation 和 Conclusion，例如：

```text
把這個中文論點轉成練習用的 British academic English，
不要新增任何未被來源支持的內容。
```

SAIS 會依 [Chinese-to-English Drafting workflow](03_workflows/Chinese_to_English_Drafting.md) 產出英文學習草稿、句型或語言建議。對 assessed work，先提供 brief 和 AI-use policy；AI-Free 或規則不明時，SAIS 不會產出可直接提交的完整英文稿。

### 分析作業 brief

把 brief、rubric 和 module handbook 放入專案資料夾，再說：

```text
Analyse the brief in 05_projects/<project>/ and create a distinction-focused research plan.
```

SAIS 會自動讀取 [AGENTS.md](AGENTS.md) 的路由規則，載入相應 workflow、project context、institutional profile、governance 與 template。

## 每個專案怎麼開始

最快的方式是在 PowerShell 執行：

```powershell
.\scripts\New-SAISProject.ps1 -ProjectName mgt_example_report -ModuleCode MGT000 -AssessmentType Report -Deadline "2026-12-01 12:00 Europe/London"
```

這會建立 project context、來源核實紀錄、提交前檢查與安全的資料夾結構。你也可以手動：

1. 複製 [Project_Context.md](04_templates/Project_Context.md) 到 `05_projects/<project-name>/`。
2. 將可安全保存的 brief、handbook、文章放入 `materials/`。
3. 將草稿、個資、未公開資料、訪談資料或導師私密回饋放入 `private/`；此資料夾已被 Git 忽略。
4. 先讓 SAIS 分析資料與建立計畫，再逐步寫作、審計與修訂。

## 重要規則

- Module handbook、rubric、assessment brief、AI-use policy 與 supervisor guidance 優先於一般 SAIS 建議。
- 不要將 AI 產出的內容當作學術來源或捏造引用。
- AI detector 分數不是合規標準；是否可提交取決於該 assessment 的規則、你的作者責任、來源可追溯性與必要的 disclosure。
- SAIS 預設使用 British English 進行學術輸出，並可用中文講解。

## Repository map

- `00_system/` — 系統使命、資料治理、版本與 onboarding。
- `01_governance/` — 學術誠信、證據、不確定性、品質與 AI-use policy。
- `02_institution/` — 已核實的 Sheffield programme/module context。
- `03_workflows/` — 各類任務的標準流程。
- `04_templates/` — 可重複使用的 project、reading、argument、research 與 AI-use formats。
- `05_projects/` — 實際課程、作業與 dissertation 工作區。
- `06_memory/` — 研究興趣、成長紀錄與重複問題。
- `07_quality_control/` — Auditor、Challenger、Examiner、calibration 與 regression tests。

## 入學前下一步

完成 [Onboarding Checklist](00_system/Onboarding_Checklist.md)：建立 Zotero、完成一份英文 mini-analysis、補一份 methodology audit，並在收到正式 handbook 後建立 module profiles。
