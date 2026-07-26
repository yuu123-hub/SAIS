# Repository Structure

| Area | Files | 評估 |
|---|---:|---|
| `00_system`–`07_quality_control` | 110 | 模組化核心；`03_knowledge` 與 `03_workflows` 共用數字前綴，排序可能含糊。 |
| `05_projects` | 9 | project-scoped 區域；不應視為 global Canonical rule。 |
| `docs` | 18（audit 前） | MVP、v0.2、Stage A 已分隔。 |
| `exports` | 57 | Full 38、Plus 12、local 7；deployment 角色清楚。 |
| `scripts` / `tests` | 5 | 小型 local tooling/validation，無 Runtime implementation。 |

**Evidence**：194 tracked files；未發現已追蹤的 `backup`、`deprecated`、`obsolete` 或 `tmp` 命名。`Draft_Review.md` 與 `Chinese_to_English_Drafting.md` 是功能名稱，非廢棄證據。

**Issue S-01（Low）**：`03_knowledge` / `03_workflows` 同為 `03`。Impact：人類排序與引用辨識輕微不一致。Suggested fix：未來若重編號，採 migration/redirect plan；本次不改名。
