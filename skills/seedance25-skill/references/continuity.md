# 镜头衔接（每一镜从上一镜切过来）

## 原则

- **新镜头从上一镜的构图和站位切过来**：同一侧机位、相近景别、人物在同样的位置，然后在新镜头里推进。除非剧本明确换场或时间跳跃。
- 衔接帧取的是**剪辑后真正留下的最后一帧**，不是原片最后一帧（原片尾巴常被剪掉）。
- 衔接帧只管空间和光色，**不管脸**（见 `character-lock.md`）。
- 前一镜人物不能在新镜里缩成远处小人（团队踩过：上一镜人物在中景，新镜他坐到远处背景，接不上，重跑）。

## 操作

1. 先决定上一镜的剪辑出点（例如 6.0 秒，后面的空看要剪掉）。
2. 抽衔接帧：
   ```bash
   scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
   # 或原片最后一帧：scripts/last_frame.sh S02_v2.mp4 S02_v2_last.png
   ```
3. 衔接帧作为**最后一张参考图**上传。
4. 提示词写法：
   ```
   Image 4 is only a continuity frame from the end of the previous shot: use it for the same camera side,
   the same medium framing and distance, the same warm golden light, the same positions of the man, the woman
   and the dog; do not copy any signs, logos, lettering or faces from Image 4.
   The shot MUST open in the same framing and space as Image 4.
   0-2s: open on the same framing as Image 4 — <列出此刻每个人的位置和姿态>.
   ```
5. 开场 1-2 秒内完成"从衔接帧出发"的动作，不要一上来就换景别。

## 延长 vs 另起一条

| 方式 | 适合 | 注意 |
|---|---|---|
| 平台的 Extend / 延长 / 续写（`在 @视频1 的基础上续写 N 秒`） | 动作必须无缝接下去 | 官方与本地实测：接缝几乎无跳变；但输出常把原段一起带出，计费按平台 |
| 另起一条 + 衔接帧参考 | 可以剪一刀的接法、换景别 | 开场与衔接帧相似度不保证，写死开场站位 |
| 首帧位（first_frame） | 必须第一帧完全一致 | 会锁死整张画面，含当时的脸部状态 |
| TapNow `{{Video}}` | 续拍上一条通过的片子 | 挂已通过的版本，不挂废片 |

## 换场 / 时间跳跃

- 写明"本段为时间硬切，不做穿门推镜"，只从衔接帧取色调或天气。
- 换场第一镜用建立镜头（全景、空间锚点清楚），再进人物。

## 衔接检查

- 上一镜出点帧和下一镜第 0 帧并排看：机位侧、人物左右、光色、道具位置、服装状态。
- 不一致就重跑下一镜，不要在剪辑里用转场掩盖。
