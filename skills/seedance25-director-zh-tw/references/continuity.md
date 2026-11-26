# 鏡頭銜接（每一鏡從上一鏡切過來）

## 原則

- **新鏡頭從上一鏡的構圖和站位切過來**：同一側機位、相近景別、人物在同樣的位置，然後在新鏡頭裡推進。除非劇本明確換場或時間跳躍。
- 銜接幀取的是**剪輯後真正留下的最後一幀**，不是原片最後一幀（原片尾巴常被剪掉）。
- 銜接幀只管空間和光色，**不管臉**（見 `character-lock.md`）。
- 前一鏡人物不能在新鏡裡縮成遠處小人（團隊踩過：上一鏡人物在中景，新鏡他坐到遠處背景，接不上，重跑）。

## 操作

1. 先決定上一鏡的剪輯出點（例如 6.0 秒，後面的空看要剪掉）。
2. 抽銜接幀：
   ```bash
   scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
   # 或原片最後一幀：scripts/last_frame.sh S02_v2.mp4 S02_v2_last.png
   ```
3. 銜接幀作為**最後一張參考圖**上傳。
4. 提示詞寫法：
   ```
   Image 4 is only a continuity frame from the end of the previous shot: use it for the same camera side,
   the same medium framing and distance, the same warm golden light, the same positions of the man, the woman
   and the dog; do not copy any signs, logos, lettering or faces from Image 4.
   The shot MUST open in the same framing and space as Image 4.
   0-2s: open on the same framing as Image 4 — <列出此刻每個人的位置和姿態>.
   ```
5. 開場 1-2 秒內完成"從銜接幀出發"的動作，不要一上來就換景別。

## 延長 vs 另起一條

| 方式 | 適合 | 注意 |
|---|---|---|
| 平台的 Extend / 延長 / 續寫（`在 @视频1 的基礎上續寫 N 秒`） | 動作必須無縫接下去 | 官方與本地實測：接縫幾乎無跳變；但輸出常把原段一起帶出，計費按平台 |
| 另起一條 + 銜接幀參考 | 可以剪一刀的接法、換景別 | 開場與銜接幀相似度不保證，寫死開場站位 |
| 首幀位（first_frame） | 必須第一幀完全一致 | 會鎖死整張畫面，含當時的臉部狀態 |
| TapNow `{{Video}}` | 續拍上一條透過的片子 | 掛已透過的版本，不掛廢片 |

## 換場 / 時間跳躍

- 寫明"本段為時間硬切，不做穿門推鏡"，只從銜接幀取色調或天氣。
- 換場第一鏡用建立鏡頭（全景、空間錨點清楚），再進人物。

## 銜接檢查

- 上一鏡出點幀和下一鏡第 0 幀並排看：機位側、人物左右、光色、道具位置、服裝狀態。
- 不一致就重跑下一鏡，不要在剪輯裡用轉場掩蓋。
