---
name: seedance25-director-zh-tw
description: （繁體中文）Seedance 2.5 影片提示詞、分鏡與劇本腳本寫作。用於寫或改 Seedance 2.5 單條提示詞（4-30 秒）、把劇本拆成分鏡和逐秒節拍、做角色/場景/道具/光色一致性、接鏡連續性、豎屏短劇爆款鉤子、對白口型、審核避坑、出片 QC 與後期。分國內平台（小云雀、LibTV、即梦）和海外平台（Vigloo Studio、TapNow、Higgsfield）兩套寫法。
---

# Seedance 2.5 提示詞 · 分鏡 · 劇本腳本

一套從劇本到可提交提示詞的完整流程，來自真實短劇與預告片生產。規則優先順序：**平台硬限制 > 本包通用規則 > 個人風格**。

## 0. 先判斷三件事

1. **平台在哪**：國內（小云雀 / LibTV / 即梦）讀 `references/domestic.md`；海外畫布（Vigloo Studio / TapNow / Higgsfield）讀 `references/overseas.md`。兩邊的參考圖寫法、真人臉政策、計費不同，不能混用。
2. **交付形態**：豎屏 9:16 短劇，還是 16:9 橫屏短片 / 預告片？讀 `references/formats-and-budget.md`。
3. **要的是什麼**：劇本 → 分鏡 → 提示詞，還是隻改一條提示詞，還是 QC 已出片？按下面的流程表跳到對應步驟。

## 1. 工作流

| 步驟 | 做什麼 | 讀哪份 |
|---|---|---|
| 1 定位與劇本 | 一句話定位、前 3 秒鉤子、可拍單集劇本 | `references/viral-hooks.md`、`references/script-and-storyboard.md`、`templates/episode-script.md` |
| 2 資產 | 鎖角色定妝照、場景主圖/反打、道具狀態，建資產表 | `references/character-lock.md`、`references/consistency.md`、`templates/asset-bible.md` |
| 3 分鏡 | 拆成 4-30 秒生成單元，每單元逐秒節拍 | `templates/script-to-shots.md`、`templates/storyboard-table.md`、`references/long-takes.md`、`references/action-and-fights.md` |
| 4 提示詞 | 按平台模板寫，數字符 | `references/universal-rules.md`、`templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`、`examples/` |
| 5 表演與節奏 | 去刻意象徵動作，壓緊節奏 | `references/acting-and-pacing.md` |
| 6 聲音 | 原生對白、多語種、聲線鎖定、禁 BGM | `references/dialogue-audio.md` |
| 7 提交前 | 審核風險、參考順序、畫幅、預算（等使用者確認） | `references/moderation-and-pitfalls.md`、`references/formats-and-budget.md`、`scripts/cost_calc.py` |
| 8 出片 QC | 聯絡表抽幀查臉、手、穿模、文字、尾巴 | `references/qc-checklist.md`、`scripts/contact_sheet.sh`、`templates/qc-report.md` |
| 9 接下一鏡 | 從剪輯出點截銜接幀 | `references/continuity.md`、`scripts/cut_frame.sh` |
| 10 後期與釋出準備 | 剪尾巴、靜音模型配樂、無標點字幕、9:16 封面、AI 標識 | `references/post-production.md`、`references/domestic.md`（AI 內容標識） |

平台選擇見 `references/platform-comparison.md`；來源見 `references/sources.md`。

## 2. 十一條鐵律（每條提示詞都要過）

1. **逐秒節拍**：整數秒、首尾相接、不留空檔（`0-2s / 2-7s / 7-10s`）。每段只發生一件主要的事。
2. **只描述當前畫面**：模型沒見過你之前的版本。不寫 still、as before、again、修改後、和上一條一樣。需要延續的狀態直接寫成現在時（"Cole sits on the tailgate"）。
3. **臉只認鎖定的原始定妝照**：絕不用生成影片的截幀當臉部參考。銜接幀只管機位、景別、站位、光色。
4. **每張參考圖寫清用途和不用的部分**：`Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`。
5. **負面約束集中、簡短、寫成 FORBIDDEN / 禁止 / 不要**，不寫 avoid。視覺上能用正向狀態表達的，優先寫正向（"門框和四個人全程留在畫面裡"）。
6. **對白寫進它發生的那一秒**，逐字、帶說話人、帶聲音描述；寫明"只有 X 說話"，不說話的人寫 `mouth stays closed, no lip movement`。
7. **每個動作都要有理由**：不做刻意的象徵動作（揣錢、指長椅、對著鏡頭凝視），節奏緊，結尾不留長時間對視。
8. **新鏡頭從上一鏡的構圖和站位切過來**：同一側機位、同樣的人物位置，除非劇本明確換場。
9. **不要字幕、不要水印、不要背景音樂**，開頭和結尾各寫一次；畫面裡不需要的文字一律"無字、無標識"。
10. **數字不編**：價格、上限、積分寫來源和日期，不知道寫"未實測"。
11. **畫質按場景寫細紋理**：只點名這一鏡裡真實存在的細紋理（外景如岩石、水面、樹葉、遠山；內景如布料、木紋、皮膚、頭髮），並要求"細節清晰銳利，沒有塊狀 / 網格狀壓縮偽影"。不要套一句萬能畫質詞，也不要列畫面裡沒有的東西。

## 3. 輸出格式

- 給使用者的每條提示詞前面附一張**節拍摘要表**（不貼上進平台）：秒段 / 景別機位 / 動作 / 臺詞 / 聲音。
- 提示詞正文單獨放程式碼塊，標出字元數（`wc -m`）和平台上限。
- 列出參考圖掛載順序：`參考圖1 = 角色A定妝照` …
- 寫明預計花費的計算方式（按平台顯示為準），未經使用者確認不提交付費任務。

## 4. 不做的事

- 不替使用者點生成、不購買積分、不取消已提交的付費任務。
- 不在提示詞裡寫真實人名、品牌、賬號。
- 不承諾平台沒公開的能力。
