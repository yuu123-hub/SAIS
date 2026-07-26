# Export Consistency

| Check | Result | Evidence |
|---|---|---|
| Full Pack | Pass | `exports/chatgpt_mvp/` = 38 files。 |
| Plus Project Knowledge | Pass | `exports/chatgpt_mvp_plus/` = 12 files。 |
| Plus local-only | Pass | `exports/chatgpt_mvp_plus_local/` = 7 files。 |
| Lossless body preservation | Pass | 12 mapped composites；0 source-body containment failures。 |
| Composite provenance | Pass with caution | source separators/status labels present；Academic Constitution/AOCOM Lite marked non-formal composites。 |
| Freshness | Caution | Harvard export retains Summer 2025 source warning and Library-page check requirement。 |

**Issue E-01（Medium）**：Full/Plus export freshness is manually governed. Impact：source edits can create export drift before a new validation/deployment. Suggested fix：只有 Stage A 證據顯示反覆 drift 時，建立 manifest + automated lossless validation（不改寫內容）。

**Issue E-02（Low）**：Harvard guide is intentionally an operational Markdown summary, not every source-type example. Impact：unlisted types must be checked against current University Library guidance. Suggested fix：維持 final-submission freshness check。
