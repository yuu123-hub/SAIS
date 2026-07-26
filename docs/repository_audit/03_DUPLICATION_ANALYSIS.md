# Duplication Analysis

## 結果

- 精確檔案 SHA-256 重複 groups：**0**。
- 高度重疊 group A：12 個 Plus composites 對應 Full Pack source bodies；逐字 containment failures：**0**。這是要求的 lossless merge，**不應合併或刪除**。
- 高度重疊 group B：Full export 複製 repository 規則與 workflow；這是 deployment export，**不應被誤當 Canonical duplicate**。
- 說明重疊：README、MVP docs、v0.2 docs、Stage A docs 重複提及 version/authority/AI boundary。這是必要的 audience-specific guidance，但有 version drift 風險。

**Issue D-01（Medium）**：跨文件的 version/deployment 說明無單一 machine-readable manifest。Reason：同一事實在多個 export/readme 中重述。Impact：更新後可能部分漂移。Suggested fix：未來建立受控 manifest 作為 export input；不得自動合併 academic content。
