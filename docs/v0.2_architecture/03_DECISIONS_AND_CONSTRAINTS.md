# SAIS v0.2：已凍結決策與約束

## Decision Register

| Decision | Status | Rationale | Consequence | Revisit trigger |
|---|---|---|---|---|
| MVP v0.1.0 是 static Knowledge Pack | Confirmed | 已驗收 deployment 不具 Runtime | 不宣稱自動 routing/context | 真實使用顯示手動流程是瓶頸 |
| Repository 保持 modular | Confirmed | 便於 provenance、更新與審核 | export 可 composite，source 不可被取代 | modular 結構無法維護或檢索 |
| Repository 是唯一 Canonical source | Confirmed | 防止 export 成為分叉權威 | ChatGPT Pack 僅是 export | 建立明確 migration/registry 後仍須維持原則 |
| ChatGPT Pack 是 export | Confirmed | ChatGPT 不可讀本地 repo | 人工 deployment 與版本核對必要 | automated export 驗證通過 |
| Plus Pack 使用 lossless merge | Confirmed | summary 曾造成 substantive content loss | 不得 compression/rewrite 原文 | 介面限制或新驗證機制有證據改變需求 |
| Project Knowledge 使用 12-file deployment | Confirmed | 已驗收 Plus Pack 結構 | VERSION 等 local-only 檔不得上傳 | 實際產品限制或需求改變 |
| Academic Constitution 是 export-only composite | Confirmed | 未找到正式 Canonical module | 必須保留 attributed/non-canonical status | 正式模組經人工核定建立 |
| AOCOM Lite 是 operational composite | Confirmed | 正式 AOCOM 尚不存在 | 不得稱為正式 AOCOM | 正式 AOCOM 經人工核定建立 |
| Harvard guide 必須 freshness check | Confirmed | 官方 guidance 可能更新 | final use 要求查看 University Library 現行頁面 | 官方來源與核對政策改變 |
| ChatGPT 與 Codex 角色分離 | Confirmed | 兩者無自動 live bridge | Codex 維護/export；ChatGPT 學術互動 | 安全且可驗證的整合需求出現 |
| 不立即建立 Runtime | Deferred | 尚未有足夠真實瓶頸證據 | v0.2 僅規格 | Stage A/B acceptance criteria 達成 |
| 不立即建立 multi-agent | Deferred | 複雜度高、未證明必要 | 不納入 Runtime MVP | 單一流程有可重現的無法解決失敗 |
| 不立即建立 vector database | Deferred | retrieval 痛點未證實 | 維持 explicit file/module selection | 來源規模與檢索失敗有證據 |
| 不立即建立 API | Deferred | manual flow 未證實無法滿足 | 不做外部服務依賴 | 有可驗證 integration use case |
| 不立即建立 long-term memory | Deferred | privacy/scope 邊界優先 | project/module/global memory 不自動合併 | 跨 session continuity 有明確同意與需求 |
| Assessment-specific AI policy 優先 | Confirmed | 模組規則可覆蓋一般 SAIS guidance | AI unknown 時採安全 coaching | 官方 policy 明確變更 |
| 不得虛構來源、頁碼、規則、結果或 supervisor feedback | Confirmed | academic integrity 核心 | 缺資料時標示 gap/verification | 無；此為長期約束 |
| 作業資料、私人資料與 long-term memory 必須分離 | Confirmed | privacy/confidentiality | 不得自動跨 scope 重用 | 有明確 consent/provenance 機制 |
| 不得把 QC 當作成績保證 | Confirmed | Auditor/Challenger 不是 marker | 使用 readiness/finding language | 無；此為長期約束 |
| 大型功能由真實痛點觸發 | Confirmed | 防止過度設計 | roadmap 必有 trigger/evidence | 可重現痛點與 acceptance evidence |

## Security and Academic Integrity Constraints

- assessment-specific AI rules 與 student authorship 優先；AI-Free 或 policy unknown 時不提供可直接提交的 ghostwritten prose。
- 不得 fabrication source、quotation、page number、DOI、資料、結果、institutional rule 或 supervisor feedback。
- citation 必須可核對；不明引用或 source type 必須標示 verification gap。
- confidential、participant、employer、assignment draft、submitted work 與 personal data 只可在獲授權且最小必要範圍處理。
- secrets、credentials、local paths、logs 與完整 prompt content 不得被寫入 export、trace 或長期記錄。

## Versioning 與遷移

- **MAJOR**：權威模型、資料處理邊界或不相容 deployment contract 改變。
- **MINOR**：向後相容的新 workflow/profile/export capability，或正式 Canonical module 新增。
- **PATCH**：不改變 contract 的澄清、修正或 validation 改善。

若要把 export-only `Academic_Constitution.md` 遷移為正式 Canonical module，必須先建立有明確 owner、canonical path、version、authority 與引用更新的來源文件，再更新 export provenance；不得只移除「composite」標籤。AOCOM Lite 遷移至正式 AOCOM 的要求相同。

為避免新舊 Project 文件共存，deployment 必須有 manifest/version、明確 upload checklist、local-only `VERSION.md` 與人工清除舊檔步驟。rollback 必須保留已知可用的 Pack revision、其 checksum/commit reference 與復原步驟；不得以未驗證的新 export 覆蓋唯一可回退版本。
