# Recommendations

每項均為建議，**本 audit 未修正任何項目**。

## Critical

1. 無立即修正項。Broken links=0、lossless failures=0，且無已證實 security breach。

## Recommended

1. 在 Stage A 有真實 deployment/version mixing evidence 時，定義 baseline、current head、Pack version 的單一語意。
2. 若 export drift 重複出現，建立受控 manifest 與 automated lossless validation；不產生 summary/rewrite。
3. 在正式 Canonical Constitution/AOCOM 有 owner、內容與核定後，完成來源遷移；在此之前保留 composite labels。
4. 對 Harvard 保留 final-use Library freshness check，特別是罕見 source types。
5. 以 Stage A logs 判斷是否需要最小 Canonical metadata contract，而非立即建 registry。
6. 檢查 root README 的 UTF-8 rendering/tooling 相容性。

## Optional

7. 當相對連結數量顯著增加時，加入 anchor/external-link checking。
8. 若 navigation 成為真實問題，規劃 `03_knowledge`/`03_workflows` 編號 migration。

## Reject（目前不要做）

9. 不因本 audit 而建立 Runtime、API、memory、retrieval、vector database 或 multi-agent。
10. 不將 Plus composites 反向當作 Canonical source，也不以壓縮方式處理 export。
