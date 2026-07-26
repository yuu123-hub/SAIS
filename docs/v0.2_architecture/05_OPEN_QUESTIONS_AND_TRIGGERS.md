# SAIS v0.2：Open Questions and Triggers

本文件只保留真正未決問題。所有項目的預設都不是「實作」，而是維持目前最小、已驗證的 manual/static workflow，直到證據足以改變決策。

| Question | Current status | Why it matters | Evidence needed | Decision owner | Earliest decision point | Default action if unresolved | Trigger for reconsideration |
|---|---|---|---|---|---|---|---|
| 是否需要正式 Runtime？ | Unknown | 可能降低重複選檔與漏載風險，也可能徒增複雜度 | 2–3 個真實 coursework 的可重現 manual bottleneck | Repository owner | Stage A 後 | 維持 static Pack/manual routing | 同類 task 多次因 context selection 失敗 |
| 是否需要正式 Academic Constitution？ | Unknown | 現有 composite 的 authority/provenance 有限制 | 正式內容 owner、範圍、核定與引用需求 | Repository owner + academic governance owner | metadata/registry 前 | 保持 export-only attributed composite | composite 被反覆誤用或有正式文件可核定 |
| 是否需要正式 AOCOM？ | Unknown | AOCOM Lite 只提供 MVP operational model | 正式定義、owner、與 workflows 的必要性 | Repository owner + governance owner | metadata/registry 前 | 保持 AOCOM Lite composite | Lite 無法支援必要的一致性判斷 |
| 是否需要 long-term memory？ | Unknown | 可改善跨 session continuity，但帶來 privacy/scope 風險 | 重複 continuity failure、user consent、retention model | Repository owner + data/privacy owner | Stage E 前 | 維持 project-scoped manual records | 同一問題反覆因無安全記憶而失敗 |
| 是否需要 source ingestion pipeline？ | Unknown | 可能減少大量來源的手動前處理 | 大量來源造成可量化的延遲/錯誤 | Repository owner | Stage E 前 | 使用現有 reading/source workflows | 來源處理成為主要瓶頸 |
| 是否需要 PDF/DOCX parser？ | Unknown | 可協助取得來源文字，但存在版權、品質與安全風險 | 多個合法授權 use case 與 parsing failure evidence | Repository owner | Stage E/F 前 | 使用使用者提供的可存取文本或手動摘錄 | 文件格式持續阻斷正當分析 |
| 是否需要 vector retrieval？ | Unknown | 可能處理更大 knowledge/source corpus | explicit selection/registry 已無法滿足檢索 | Repository owner | Runtime MVP 驗證後 | 使用明確 modules/manifest | 可重現 recall failure 且 corpus 規模合理 |
| 是否需要 API/tool integration？ | Unknown | 可能改善自動化，也增加 credential/治理風險 | 高價值且安全的明確 integration use case | Repository owner | Stage F 前 | 保持 local/manual workflow | manual workflow 明顯無法完成必要任務 |
| 是否需要 multi-agent？ | Unknown | 可能分工，但協調與追溯成本高 | 單一受控流程反覆無法完成、且可測量 | Repository owner | Stage F 前 | 單一流程 + QC | 有明確不可由單一 Runtime 解決的工作分解需求 |
| 是否需要 task-specific ChatGPT Packs？ | Unknown | 可降低 upload/context 負擔，也可能造成版本分叉 | 12-file Plus Pack 對特定 task 持續不足的證據 | Repository owner | Stage D 前 | 維持 Full/Plus Pack 與 manual selection | task-specific deployment 被重複要求且可驗證 lossless |

## 決策守則

- Unknown 不是缺失；它表示目前沒有足夠證據授權擴張系統。
- 每項重審必須記錄 evidence、風險、替代方案、owner 與結論。
- 若證據只反映單一 assignment、單一 prompt 或未確認的個人偏好，預設不改變架構。
- 任何啟動條件成立後，仍須先更新 [03_DECISIONS_AND_CONSTRAINTS.md](03_DECISIONS_AND_CONSTRAINTS.md) 或提出 ADR，才可開始實作。
