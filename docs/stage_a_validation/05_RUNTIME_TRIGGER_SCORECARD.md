# Runtime Trigger Scorecard

**模板狀態：Prepared, not executed。此分數只輔助人工判斷，不會自動批准 Runtime。**

| 維度 | 0 | 1 | 2 | 3 | 本次分數 | Evidence / Log ID |
|---|---|---|---|---|---:|---|
| Manual module selection | 無問題 | 偶爾麻煩 | 經常重複 | 阻礙工作 | | |
| Missing-module errors | 無 | 偶發 | 多次 | 造成重大錯誤 | | |
| Context reconstruction | 無 | 少量 | 經常 | 每次都需重建 | | |
| Version mismatch | 無 | 一次 | 多次 | 造成錯誤輸出 | | |
| Prompt assembly effort | 很低 | 低 | 高 | 阻塞 | | |
| Repeated task pattern | 不重複 | 少量 | 經常 | 高度固定 | | |
| Traceability need | 現有足夠 | 小缺口 | 明顯缺口 | 無法驗證 | | |
| Workaround cost | 無 | 低 | 中 | 高 | | |
| **Total** |  |  |  |  | **/**24 | |

## 分數判定

- **0–6**：不啟動 Runtime。
- **7–12**：繼續收集證據。
- **13–18**：考慮 Runtime MVP discovery。
- **19–24**：Runtime MVP 可能合理，但仍需人工批准。

## 必要門檻（全部需符合）

- [ ] 至少 2–3 份真實 coursework logs。
- [ ] 至少兩個不同任務類型。
- [ ] 至少一個問題無法用文件或 Project Instructions 小修解決。
- [ ] 沒有更便宜的 manual workaround。
- [ ] Runtime 範圍能維持在 resolver、loader、context、prompt、trace。

## 不得作為單獨啟動理由

- 本週 Codex 額度剩餘。
- 技術上可以做到。
- 覺得 multi-agent 很強。
- 想自動化所有流程。
- 尚未發生的假設問題。
