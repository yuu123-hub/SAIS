# SAIS v0.2 Architecture Specification

本目錄是 **架構規格，不是程式碼**。v0.2 不代表 Runtime 已完成；它只定義未來若有真實需求時，應以何種最小、可追溯方式實作。

## 建議閱讀順序

1. [00_CURRENT_STATE_AND_GOALS.md](00_CURRENT_STATE_AND_GOALS.md)
2. [01_TARGET_ARCHITECTURE.md](01_TARGET_ARCHITECTURE.md)
3. [02_RUNTIME_MVP_SPECIFICATION.md](02_RUNTIME_MVP_SPECIFICATION.md)
4. [03_DECISIONS_AND_CONSTRAINTS.md](03_DECISIONS_AND_CONSTRAINTS.md)
5. [04_IMPLEMENTATION_ROADMAP.md](04_IMPLEMENTATION_ROADMAP.md)
6. [05_OPEN_QUESTIONS_AND_TRIGGERS.md](05_OPEN_QUESTIONS_AND_TRIGGERS.md)

## 已凍結的基線

- repository 是唯一 Canonical source；ChatGPT Knowledge Pack 只是 export。
- Full MVP Pack 為 38 files；Plus deployment 為 12 Project Knowledge files 加 7 local-only files。
- Plus Pack 必須使用 lossless merge。
- `Academic_Constitution.md` 是 export-only attributed composite；`AOCOM_Lite.md` 是 MVP operational composite，均非正式 Canonical module。
- assessment-specific AI policy、student authorship、來源驗證與現行官方材料優先。

## Deferred 功能

Runtime implementation、memory、retrieval/vector database、source ingestion、API、tool integration、agents 與 cloud deployment 均為 Deferred，不能因本規格存在而視為已核准或已完成。

## 未來如何使用

在建立任何實作前，先以本規格確認：使用痛點是否真實、scope 是否最小、Canonical source 是否清楚、AI/integrity 風險是否已處理，以及 acceptance criteria 是否可驗證。若實作內容與本規格衝突，必須先更新已凍結 decision 或提出 ADR；不得直接以程式碼覆蓋規格。

不得直接把本目錄上傳為 ChatGPT Project Knowledge。它是給 repository 維護與未來架構決策使用的文件，不是學術任務執行 Pack。
