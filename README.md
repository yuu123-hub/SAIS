# SAIS v1 — Sheffield Academic Intelligence System

SAIS 是一套在本機 Markdown repository 中運作、由 Codex 協助執行的學術工作系統。它的明確目標是協助你在每一門課的報告、作業與 dissertation 中，持續以 **Distinction** 為品質標準：將 rubric 轉為成功條件、建立有證據的批判性論證、找出高權重缺口，並在交稿前以 marker 的角度修訂。

它採取**教練模式**：幫你拆題、找資料、建立論證、檢查草稿、整理導師回饋；它不會捏造來源，也不會把未核實內容偽裝成可直接交的作業。

## 先從這裡開始

1. 把 assignment brief、module handbook 或 rubric 放到一個新專案的 `05_projects/<project-name>/`；敏感檔放入該專案的 `private/`，此資料夾預設不會被 Git 追蹤。
2. 由 [Project_Context.md](04_templates/Project_Context.md) 建立該專案背景。
3. 在 Codex 說明你的任務，例如：`Analyse the brief in 05_projects/mgt601_essay/ and create a research plan.`
4. Codex 會按 [AGENTS.md](AGENTS.md) 自動選取需要的 workflow、template、governance 與 project context；不用每次指定檔案。

## 什麼時候新增 Module Profile？

拿到正式 module handbook、learning outcomes、assessment rubric 或 lecturer guidance 時，複製 [Module_Profile.md](04_templates/Module_Profile.md) 至 `02_institution/modules/<module-code>/`。這些正式資料會覆蓋任何一般性建議。

## 如何安全同步 GitHub

1. 建立 **private** GitHub repository。
2. 先執行 `git status`，確認沒有私密草稿、回饋、研究資料或 PDF 被列為 staged。
3. 只提交系統規格、workflows、templates 與已去識別化筆記。
4. 未公開研究、導師回饋、受訪者資料和最終提交稿，保持在 `.gitignore` 指定的私密位置。

## Repository map

- `00_system/` — mission、資料治理與使用原則
- `01_governance/` — academic integrity、evidence、uncertainty 與 quality gates
- `02_institution/` — Sheffield verified profile 與未來 module imports
- `03_workflows/` — Codex 對不同任務的標準流程
- `04_templates/` — 可複製的 project、brief、reading 與論證格式
- `05_projects/` — 課程、作業與 dissertation 工作區
- `06_memory/` — 長期的研究興趣與已去識別化成長紀錄
- `07_quality_control/` — auditor、challenger、calibration

## Distinction-first working rule

對每一份有 rubric 的評量，SAIS 會：

1. 先抽取與排序 distinction-level 成功條件，而非直接開始寫正文。
2. 檢查論點是否具有批判性、理論是否被真正應用、證據是否足夠且可追溯。
3. 主動尋找反方、限制與替代解釋，避免描述性堆砌。
4. 以「最可能拉低分數的缺口」排序修訂建議，並保留可執行的下一步。
5. 將 lecturer 或 supervisor 的實際 feedback 寫回 project 與 growth log，讓下一份作業針對重複弱點改進。

## 進階能力已放在哪裡？

- **評分／Distinction review**：`03_workflows/Assessment_Review.md` 與 `07_quality_control/Examiner_Review.md`
- **研究問題、文獻綜述與方法論**：`03_workflows/Research_Design.md` 與 `04_templates/research/`
- **Dissertation 雙軌**：`03_workflows/dissertation_tracks/`（Academic Research / Managerial Problem Solving）
- **理論、概念、證據與 gap 累積**：`04_templates/knowledge_objects/` 與 `06_memory/`
- **開學前能力差距與職涯連結**：`03_workflows/Prearrival_and_Growth.md`
- **AI 失誤回歸測試**：`07_quality_control/test_cases/` 與 `tests/Task_Routing_Scenarios.md`

## Boundary

SAIS 的設計目標是最大化你取得卓越成績與 Distinction 的機率；最終成績仍由學校依據當期 rubric、你的原創工作與正式規範決定。SAIS 不取代 module handbook、University regulations 或 supervisor 指示。
