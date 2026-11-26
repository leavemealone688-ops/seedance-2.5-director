🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Seedance 2.5 提示詞 · 分鏡 · 劇本腳本 Skill**

一套給 AI 程式設計助手 / 智慧體用的 **Seedance 2.5 影片生產技能包**：從一句話定位、可拍劇本、分鏡拆解，到可直接貼上的提示詞、出片 QC 和後期。規則來自真實的豎屏短劇與預告片生產，並對照了官方公開指南。

- 分**國內平台**（小云雀、LibTV、即梦）和**海外平台**（Vigloo Studio、TapNow、Higgsfield）兩套寫法
- 全面一致性：角色、服裝狀態、場景拓撲、道具狀態、光色、軸線與銀幕方向、天氣、跨集、資產命名
- 爆款結構：前 3 秒鉤子、留存節奏、反轉兌現、集尾鉤子、封面標題、用後臺資料迭代
- 模板 + 樣例 + 腳本（聯絡表抽幀、銜接幀、字元計數、預算估算）
- 提供 14 種語言版本

> 平台價格、上限、功能隨時變化。文中數字都標了來源和日期（截至 2026-11），**使用前請在平台核實**；沒驗證過的寫"未實測"。

## 這個 skill 能幫創作者解決什麼

用 Seedance 2.5 做 AI 短劇時天天遇到的問題，以及讓助手按這個 skill 寫之後的變化。下面的例子是 skill 教的提示詞寫法的簡短片段。

### 1. 一句話想法 → 可直接生成的分鏡提示詞

**之前**
```text
An old woman comforts a man whose dog is sick.
```
**之後**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. 臉、服裝、場景、道具在鏡頭之間、集與集之間保持一致

**之前**
```text
Same woman as before, same clothes.
```
**之後**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. 每個鏡頭都能和上一鏡順接

**之前**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**之後**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. 3 秒鉤住觀眾、留住觀眾、每集結尾留懸念

**之前**
```text
0-3s: slow aerial shot of the city at dusk.
```
**之後**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. 對白、口型、聲線不串人

**之前**
```text
Lines listed at the end. "Her lips part."
```
**之後**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. 少廢片、少被審核拒，花積分前先算預算

**之前**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**之後**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. 按你實際用的平台寫（國內 vs 海外）

**之前**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**之後**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. 用 QC 清單和 ffmpeg 腳本代替肉眼瞎看

**之前**
```text
Watch it once, notice six fingers after posting.
```
**之後**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### 適合誰

- 做抖音、Shorts、Reels 或短劇 App 豎屏劇的短劇創作者
- 做短片、預告片、長鏡頭的 AI 影像作者
- 需要固定角色、按規格交片的品牌 / 廣告團隊
- 必須滿足時長、畫幅和 AI 標識規則的比賽參賽者

這裡不寫編造的成功率：skill 要求助手只用真實的後臺資料和真實的平台價格。

## 語言版本

每種語言都是一個獨立、合法的 skill 資料夾，`name` 互不重複。用 `--lang` 只裝你需要的那一種。技能名用 `seedance25-director[-<語言>]`（不帶點），因為技能名只允許小寫字母、數字和連字元。

| 語言 | 資料夾 | `--lang` | 翻譯範圍 |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | 全部（SKILL.md、references、templates、樣例說明） |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | 全部（SKILL.md、references、templates、樣例說明） |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | 全部（SKILL.md、references、templates、樣例說明） |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | 全部（SKILL.md、references、templates、樣例說明） |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md 為該語言；references / templates / examples 暫為英文 |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md 為該語言；references / templates / examples 暫為英文 |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md 為該語言；references / templates / examples 暫為英文 |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md 為該語言；references / templates / examples 暫為英文 |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md 為該語言；references / templates / examples 暫為英文 |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md 為該語言；references / templates / examples 暫為英文 |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md 為該語言；references / templates / examples 暫為英文 |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md 為該語言；references / templates / examples 暫為英文 |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md 為該語言；references / templates / examples 暫為英文 |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md 為該語言；references / templates / examples 暫為英文 |

## 目錄

```
seedance-2.5-director/
├── README.md / README.<lang>.md   本檔案 + 各語言版本
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               給讀 AGENTS.md 的工具的指標
├── GEMINI.md               Gemini CLI 擴充套件上下文
├── gemini-extension.json   Gemini CLI 擴充套件清單
├── install.sh              一鍵安裝到各工具 / 打包 zip
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         簡體中文，權威版本
    │   ├── SKILL.md              入口：工作流 + 十一條鐵律
    │   ├── references/           規則手冊（平台、寫法、一致性、爆款、QC、後期……）
    │   ├── templates/            提示詞 / 分鏡表 / 劇本 / 資產表 / QC 模板
    │   ├── examples/             改寫自實跑的樣例提示詞
    │   └── scripts/              ffmpeg 抽幀、字元計數、預算估算
    └── seedance25-director-<lang>/  同一 skill 的其他語言版本
```

## 安裝

需要：`bash`；腳本功能另需 `ffmpeg`/`ffprobe` 和 `python3`。

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # 所有工具、所有語言
./install.sh claude --lang zh-tw          # 一個工具、一種語言
./install.sh codex --lang en,zh-tw         # 裝多種語言
./install.sh cursor --project /path/to/repo --lang zh-tw   # 裝到某個專案裡
./install.sh all --dry-run             # 只看會裝到哪裡
./install.sh workbuddy-zip --lang zh-tw   # 打包給 WorkBuddy 上傳
```

已有同名目錄會自動改名備份。安裝方式是複製（部分工具會跳過軟鏈）。建議每個工具只裝一種語言；14 種全裝時，助手會看到 14 個幾乎一樣的技能。

### 各工具說明

| 工具 | 使用者級目錄 | 專案級目錄 | 狀態 |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ 已按官方文件核實 (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (舊版讀 `~/.codex/skills/`) | `.agents/skills/` | ✅ 已按官方文件核實 |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ 已按官方文件核實 (geminicli.com); `/skills list`, `/skills reload` |
| Gemini CLI 擴充套件 | 整個倉庫（含 `gemini-extension.json`，技能在 `skills/` 下） | — | ✅ 已按官方文件核實 |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ 已按官方文件核實 (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ 已按官方文件核實 (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | 客戶端「技能 → 添加技能 → 上传技能」 | — | ⚠️ 未驗證：官方頁面寫了"匯入本地技能包"，但沒寫包格式；`./install.sh workbuddy-zip` 按 SKILL.md 資料夾打包，未實測匯入 |

安裝後：**Claude Code** 輸入 `/seedance25-director-zh-tw`（或直接提需求）；**Codex** 輸入 `$seedance25-director-zh-tw` 或 `/skills`；**Gemini CLI** 用 `/skills list` 確認；**Cursor** 在 Agent 對話裡輸入 `/` 搜尋 `seedance25`；**CodeBuddy** 開啟 `/skills`。

### 只讀規則、不裝工具

直接從 `skills/seedance25-director-zh-tw/SKILL.md` 開始讀，按裡面的工作流表跳到需要的檔案。

## 快速上手

1. 告訴助手：平台（如小云雀 9:16 10s）、劇情、角色定妝照。
2. 助手按 `SKILL.md` 流程給出：節拍表 → 參考圖順序 → 提示詞正文（標字元數）→ 預算。
3. 你確認後自己在平台提交（本技能不替你提交付費任務）。
4. 出片後讓助手跑 `scripts/contact_sheet.sh` 做 QC，再用 `scripts/cut_frame.sh` 截銜接幀寫下一鏡。

## 原則

1. 每次生成都花錢：先報引數和預算，確認後再提交。
2. 臉只認原始定妝照；銜接幀只管機位、站位、光色。
3. 每個鏡頭從上一鏡的構圖和站位切過來。
4. 表演自然、節奏緊，不寫刻意象徵動作。
5. 畫質按場景點名這一鏡實際有的細紋理，要求清晰銳利、沒有塊狀 / 網格狀壓縮偽影。
6. 模型配樂後期靜音，空尾巴剪掉，燒錄字幕無標點，豎屏封面 9:16。
7. 數字不編，未知寫"未實測"；倉庫裡不放任何賬號、密碼、郵箱、金鑰。

## 貢獻

- 新的實測結果請寫明平台、日期、引數，更新對應的 `references/*.md` 和 `scripts/cost_calc.py` 費率表。
- 先改權威版 `skills/seedance25-director/`，再同步各語言資料夾；`AGENTS.md`、`GEMINI.md` 只做指標。

## 許可證

本倉庫採用 [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)（署名-非商業性使用）許可：可自由使用、修改、分享，需署名，禁止商業用途。

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
