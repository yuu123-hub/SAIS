# SAIS v0.2：現況與目標

## 狀態標記

- **Confirmed**：由 repository、已驗收的 MVP 或 Git 記錄支持。
- **Proposed**：v0.2 的架構設計，尚未實作。
- **Deferred**：明確不納入目前範圍。
- **Unknown**：需要真實使用證據或人工決策，不能假設答案。

## Current State

- **Confirmed**：SAIS 是以 Markdown 為主的 modular repository；治理、機構脈絡、知識、workflow、template、memory 與 quality control 保持分層。
- **Confirmed**：SAIS ChatGPT MVP v0.1.0 已完成。完整 `exports/chatgpt_mvp/` 為 38-file MVP Knowledge Pack。
- **Confirmed**：`exports/chatgpt_mvp_plus/` 是 12-file、lossless 的 Project Knowledge deployment pack；`exports/chatgpt_mvp_plus_local/` 是 7-file local-only setup/validation pack。
- **Confirmed**：ChatGPT Project smoke test 已完成驗收；其能力受已上傳 Project Knowledge 與當前對話材料限制。
- **Confirmed**：本輪開始的 Git baseline 為 `f599794 Add lossless SAIS ChatGPT Plus deployment pack`。
- **Confirmed**：repository 根目錄未發現名為 `VERSION` 的檔案；版本沿革目前可由 `CHANGELOG.md` 與 export 內的版本紀錄追溯。
- **Confirmed**：`Academic_Constitution.md` 是 export-only attributed composite，並非已存在的正式 Canonical module；`AOCOM_Lite.md` 是 MVP operational composite，正式 AOCOM module 尚未存在。
- **Confirmed**：Repository 是唯一 Canonical source；任何 ChatGPT Knowledge Pack 都是由 repository 產生的 export，不是獨立 Canonical source。

### 已完成能力

- **Confirmed**：SAIS 規則與 workflow 可透過 ChatGPT Project Knowledge 支援 academic coaching。
- **Confirmed**：完整與 Plus export 都保留明確的來源、權威層級、Known Gaps 與 academic-integrity 邊界。
- **Confirmed**：Plus Pack 使用 lossless merge，以原始來源分隔符保留 substantive content；此設計是為了適應 Project 檔案數限制，而非改寫 Canonical 文件。

### 尚未具備能力

- **Deferred**：沒有 Runtime、Task Router、Dependency Resolver、Module Loader、Context Manager、Prompt Builder 或 Execution Trace 的 production implementation。
- **Deferred**：沒有 live memory、long-term memory、vector retrieval、embeddings、API、GUI、cloud deployment 或 multi-agent。
- **Confirmed**：ChatGPT 無法直接讀取本地 repository；Codex 也無法自動操作 ChatGPT Project。
- **Confirmed**：更新 ChatGPT Project 仍是人工 deployment；ChatGPT 與 Codex 不會自動共享 repository 狀態。

### Technical debt 與文件狀態

- **Confirmed**：Plus deployment 有檔案數限制，因此需要明確的 manifest、upload checklist 與版本辨識，避免新舊 Project 文件混用。
- **Confirmed**：Academic Constitution 與 AOCOM 的正式 Canonical module 仍是缺口；目前 composite 的 provenance 必須在任何 export 中保持可見。
- **Proposed**：將來以 metadata、task profiles 與受限 Runtime 取代人工選檔前，先以真實使用資料確認痛點。

## Confirmed Capabilities

在已上傳相關 Pack、且使用者提供必要材料時，ChatGPT 可依 SAIS 規則協助：

- assignment brief analysis；
- essay planning、revision 與 audit；
- report planning 與 audit；
- literature review；
- source analysis；
- claim–evidence mapping；
- methodology 與 dissertation planning；
- Harvard check；
- submission audit。

這些是 coaching、分析與品質檢查能力，不是自動寫作、成績預測或正式機構規則的替代品。

## Current Limitations

- **Confirmed**：沒有 Runtime，因此沒有自動 task routing。
- **Confirmed**：沒有自動 dependency resolution。
- **Confirmed**：沒有 live memory、long-term memory 或 vector retrieval。
- **Confirmed**：ChatGPT 無法直接存取本地 repository 或未上傳文件。
- **Confirmed**：Codex 無法自動控制 ChatGPT Project。
- **Confirmed**：Project 更新必須人工部署及核對版本。

## Verified Problems

- **Confirmed**：ChatGPT Plus Project 有檔案數限制。
- **Confirmed**：為維持 SAIS substantive content，Plus Pack 必須採用 lossless merge，不能以 summary/rewrite/compression 取代原文。
- **Confirmed**：手動更新可能造成新舊版本混用。
- **Confirmed**：ChatGPT 與 Codex 無法直接共享 repository 狀態。

## Unverified Problems

- **Unknown**：是否真的需要正式 Runtime。
- **Unknown**：是否真的需要 long-term memory。
- **Unknown**：是否真的需要 vector retrieval。
- **Unknown**：是否真的需要 natural-language router。
- **Unknown**：是否真的需要 multi-agent。

## v0.2 Goal

**Confirmed boundary：v0.2 是架構規格，不是 Runtime release。**

v0.2 的目的如下：

- **Proposed**：固定未來開發邊界。
- **Proposed**：定義可被驗證的最小 Runtime，而不實作它。
- **Proposed**：保存已確定決策、權威來源與約束。
- **Proposed**：設定大型功能的實際啟動條件。
- **Proposed**：避免因推測需求而過度設計。

任何後續實作必須以 repository 為 Canonical source，並以真實 coursework 使用痛點作為擴張依據。
