# Technical Debt

| Debt class | Level | Evidence | Impact | Suggested fix |
|---|---|---|---|---|
| Architecture debt | Low | v0.2 已明確將 Runtime/agents/retrieval Deferred | 防止過度設計，而非功能缺陷 | 保持 Stage A trigger discipline |
| Documentation debt | Medium | metadata/version facts重複且 class coverage 不一 | drift 與人工核對成本 | 最小 metadata policy，等待 evidence |
| Governance debt | Medium | Academic Constitution/AOCOM 是 composites，非正式 Canonical modules | authority 誤用風險 | 只有 owner/approved content 就緒時才建立正式來源 |
| Workflow debt | Low | 23 workflows、task routing tests存在 | 規模增加後 routing 覆蓋可能漂移 | Stage A 記錄真實 routing failure |
| Knowledge debt | Medium | Harvard operational summary源自 Summer 2025 material | freshness/source-type coverage限制 | final use 核對 Library page |
| Export debt | Medium | lossless pass，但 release freshness 手動控制 | source/export version drift | 若重複出錯才自動化 manifest/validation |

不把「沒有 Runtime」列為 debt；在目前 evidence 下它是刻意的 Deferred decision。
