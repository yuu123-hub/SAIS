# Version Consistency

| 項目 | Evidence | 判定 |
|---|---|---|
| System | `00_system/Version.md`：SAIS v1.6.0 | Confirmed source-system version。 |
| MVP | Full/Plus metadata：SAIS MVP 0.1.0 | Confirmed export version。 |
| Plus deployment | 12 Knowledge + 7 local-only = 19 | Confirmed current structure。 |
| Architecture | 文件標為 v0.2 specification | Proposed architecture, not release version。 |
| Stage A | Prepared, not executed | validation toolkit，非產品版本。 |

**Issue V-01（Medium）**：Plus `00_START_HERE.md` 內嵌 historical `VERSION.md` 仍顯示 Full Pack 的 32/6 counts；前置 runtime metadata 已說明它不是 Plus 的 12/7/19 counts。Impact：人工閱讀仍可能混淆。Suggested fix：未來以明確 `historical source metadata` presentation 或 manifest 消除雙重數字，且保留 lossless source body。

**Issue V-02（Low）**：export baseline 顯示 `5b3773b`，而現行 repository 已前進至 `f74a90d`。Reason：baseline 是建置時 commit，非錯誤。Impact：後續更新者可能誤讀 freshness。Suggested fix：定義 baseline/current-head 的語意與更新 trigger。
