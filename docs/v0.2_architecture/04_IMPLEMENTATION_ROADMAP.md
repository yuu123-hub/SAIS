# SAIS v0.2：Implementation Roadmap

本路線圖不作固定日期承諾。每一 stage 只有在 trigger 與 acceptance criteria 都被真實證據支持時才可進入；未達成 stop condition 時必須留在前一階段。

## Stage A：真實使用驗證

| 項目 | 定義 |
|---|---|
| Trigger | **立即開始**；先以已完成的 static Pack 取得真實使用資料。 |
| Scope | 使用 SAIS 處理 2–3 份真實 coursework；記錄痛點；在可授權範圍收集 lecturer/supervisor feedback。 |
| Deliverables | 使用紀錄、問題清單、真實失敗案例、改進優先級。 |
| Risks | 將單一個案、未核對的偏好或敏感內容誤當通用需求。 |
| Acceptance criteria | 至少能區分可由文件/流程修正的問題，與重複且可量化的工具瓶頸。 |
| Stop condition | 沒有足夠真實使用證據時，不進 Runtime。 |

## Stage B：Metadata and Task Profiles

| 項目 | 定義 |
|---|---|
| Trigger | 文件版本開始混亂；找不到 Canonical source；不同任務的 module selection 反覆出錯。 |
| Scope | module IDs、versions、status、task profiles、dependency graph。 |
| Deliverables | 最小 registry contract、受審核 task profile 表、衝突與 provenance 規則。 |
| Risks | 把 metadata 當成第二套 Canonical content；過早建立大量 schema。 |
| Acceptance criteria | 可重現地說明一個 task 為何載入或排除某 module，且不改變 academic source。 |
| Stop condition | 若手動 manifest/checklist 已足以解決，停止於文件化，不建立 resolver。 |

## Stage C：Runtime MVP

| 項目 | 定義 |
|---|---|
| Trigger | 手動 Context 選擇成為明顯瓶頸；同類任務反覆需要相同 modules；人工組 Prompt 容易漏文件。 |
| Scope | resolver、loader、context manager、prompt builder、trace。 |
| Deliverables | 僅組裝 context/prompt 的最小 Runtime、可讀 trace、缺 input 的 safe failure。 |
| Risks | context 被截斷、authority 順序錯置、把 Runtime 誤擴張成 writing agent。 |
| Acceptance criteria | 在定義的 task profiles 上可重現 selection、保留 provenance、記錄 omission，且 mandatory-over-budget 可安全失敗。 |
| Stop condition | 不包含 memory、API、agents 或 retrieval；任一安全約束無法驗證時停止。 |

## Stage D：Automated Export

| 項目 | 定義 |
|---|---|
| Trigger | Knowledge Pack 更新頻繁；手動合併容易遺漏；新舊版本混用。 |
| Scope | full pack、Plus pack、task-specific pack、manifest、validation。 |
| Deliverables | 可重現的 export procedure、lossless/coverage checks、deployment manifest。 |
| Risks | summary/compression 造成 substantive loss；automation 覆蓋 canonical source。 |
| Acceptance criteria | 可從指定 repository revision 重建 Pack，且逐字保留驗證與 file-count validation 通過。 |
| Stop condition | 不能證明 lossless 或 provenance 時，不發布自動 export。 |

## Stage E：Memory / Source Ingestion

| 項目 | 定義 |
|---|---|
| Trigger | 同一作業跨 session 延續困難；大量來源處理成為瓶頸；supervisor feedback 常需重複整理。 |
| Scope | 最小化的 consent、scope、provenance 與 retention design；先不承諾 database 或 retrieval。 |
| Deliverables | 問題證據、privacy model、可拒絕/可刪除行為定義、small pilot proposal。 |
| Risks | project contamination、未授權 feedback reuse、敏感資料累積。 |
| Acceptance criteria | 有明確 owner、consent、scope isolation 與可驗證價值。 |
| Stop condition | 若可由 project records、手動摘要或短期 context 解決，不建立 memory/ingestion。 |

## Stage F：Optional Integration

| 項目 | 定義 |
|---|---|
| Trigger | 只有 manual workflow 已明顯無法滿足需求時才觸發。 |
| Scope | 可評估 API、tools、retrieval、agents；不預設一定實作。 |
| Deliverables | specific use case、risk assessment、minimal integration decision。 |
| Risks | credentials、成本、資料外洩、不可追溯行為與過度自動化。 |
| Acceptance criteria | 現有 manual/Runtime MVP 已被比較；整合可在安全與 academic integrity 邊界內驗證。 |
| Stop condition | 若價值未超過新增複雜度或不能安全治理，保持 Deferred。 |

## 跨 stage 規則

- 所有 stage 必須尊重 repository-only Canonical source 與 assessment-specific AI policy。
- 任何 academic content、assignment draft、feedback 或私人資料進入新增流程前，必須有明確授權與最小化處理。
- 有效的 stop condition 是成功結果；它防止為了「完成 roadmap」而製造未被需要的系統。
