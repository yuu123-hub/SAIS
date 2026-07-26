# Risk Register

| Risk | Probability | Impact | Evidence / reason | Mitigation |
|---|---|---|---|---|
| Version Drift | Medium | Medium | 多處版本與 baseline 表述 | 定義 baseline/current-head 語意；deployment 前核對 |
| Export Drift | Medium | High | export freshness 為手動流程 | lossless validation + manifest（觸發後） |
| Broken Links | Low | Medium | 本次 0/26 broken | 變更後重跑 relative-link validation |
| Composite 誤用 | Medium | High | Constitution/AOCOM Lite 非正式模組 | 保留 export-only/operational labels |
| Stale Harvard Guide | Medium | High | Summer 2025 source warning | final submission 前核對 Library page |
| Runtime Overengineering | Medium | High | 尚無 Stage A evidence | 依 scorecard/Stage A trigger 決策 |
| Documentation Divergence | Medium | Medium | repeated guidance/version metadata | 最小 metadata policy/controlled manifest |
| Metadata ambiguity | Medium | Medium | Canonical header/owner coverage 0 | class-specific metadata contract |
| Deployment version mixing | Low | High | manual Project update | remove-old/upload-12/smoke-test procedure |
| Sensitive evidence leakage | Low | High | Stage A 將處理真實 coursework | 僅在 private assignment workspace 填寫副本 |
