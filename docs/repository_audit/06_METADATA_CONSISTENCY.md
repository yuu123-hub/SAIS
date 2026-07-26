# Metadata Consistency

## Evidence

- 標準 export labels（Document Status、Type、Source Files、Source Versions、Purpose、Applicable Tasks、Authority、Known Gaps）約出現在 52 個 export-oriented files。
- Canonical governance/knowledge/workflow/template/memory/QC areas的上述 header coverage 為 0；`Owner:` coverage 為 0。
- `Academic_Constitution.md` 明確為 export-only attributed composite；`AOCOM_Lite.md` 為 MVP operational composite，這些 status 在 exports/v0.2 有可見標示。

**Issue M-01（Medium）**：metadata contract 僅在 export 層一致，Canonical layer 主要依目錄慣例。Impact：未來 resolver/registry 或人工 audit 難以機械判定 status、owner、version、export eligibility。Suggested fix：僅在有真實 Stage A 需求時設計最小 header contract；不要現在建立 registry。

**Issue M-02（Low）**：日期、owner、canonical/export-only 等欄位不是所有文件都可比較。Impact：maintenance evidence 分散。Suggested fix：未來文件治理決策中定義哪些 document classes 必須具備何種欄位。
