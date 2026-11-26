🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Seedance 2.5 提示词 · 分镜 · 剧本脚本 Skill**

一套给 AI 编程助手 / 智能体用的 **Seedance 2.5 视频生产技能包**：从一句话定位、可拍剧本、分镜拆解，到可直接粘贴的提示词、出片 QC 和后期。规则来自真实的竖屏短剧与预告片生产，并对照了官方公开指南。

- 分**国内平台**（小云雀、LibTV、即梦）和**海外平台**（Vigloo Studio、TapNow、Higgsfield）两套写法
- 全面一致性：角色、服装状态、场景拓扑、道具状态、光色、轴线与银幕方向、天气、跨集、资产命名
- 爆款结构：前 3 秒钩子、留存节奏、反转兑现、集尾钩子、封面标题、用后台数据迭代
- 模板 + 样例 + 脚本（联系表抽帧、衔接帧、字符计数、预算估算）
- 提供 14 种语言版本

> 平台价格、上限、功能随时变化。文中数字都标了来源和日期（截至 2026-11），**使用前请在平台核实**；没验证过的写"未实测"。

## 这个 skill 能帮创作者解决什么

用 Seedance 2.5 做 AI 短剧时天天遇到的问题，以及让助手按这个 skill 写之后的变化。下面的例子是 skill 教的提示词写法的简短片段。

### 1. 一句话想法 → 可直接生成的分镜提示词

**之前**
```text
An old woman comforts a man whose dog is sick.
```
**之后**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. 脸、服装、场景、道具在镜头之间、集与集之间保持一致

**之前**
```text
Same woman as before, same clothes.
```
**之后**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. 每个镜头都能和上一镜顺接

**之前**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**之后**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. 3 秒钩住观众、留住观众、每集结尾留悬念

**之前**
```text
0-3s: slow aerial shot of the city at dusk.
```
**之后**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. 对白、口型、声线不串人

**之前**
```text
Lines listed at the end. "Her lips part."
```
**之后**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. 少废片、少被审核拒，花积分前先算预算

**之前**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**之后**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. 按你实际用的平台写（国内 vs 海外）

**之前**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**之后**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. 用 QC 清单和 ffmpeg 脚本代替肉眼瞎看

**之前**
```text
Watch it once, notice six fingers after posting.
```
**之后**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### 适合谁

- 做抖音、Shorts、Reels 或短剧 App 竖屏剧的短剧创作者
- 做短片、预告片、长镜头的 AI 影像作者
- 需要固定角色、按规格交片的品牌 / 广告团队
- 必须满足时长、画幅和 AI 标识规则的比赛参赛者

这里不写编造的成功率：skill 要求助手只用真实的后台数据和真实的平台价格。

## 语言版本

每种语言都是一个独立、合法的 skill 文件夹，`name` 互不重复。用 `--lang` 只装你需要的那一种。技能名用 `seedance25-director[-<语言>]`（不带点），因为技能名只允许小写字母、数字和连字符。

| 语言 | 文件夹 | `--lang` | 翻译范围 |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | 全部（SKILL.md、references、templates、样例说明） |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | 全部（SKILL.md、references、templates、样例说明） |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | 全部（SKILL.md、references、templates、样例说明） |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | 全部（SKILL.md、references、templates、样例说明） |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md 为该语言；references / templates / examples 暂为英文 |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md 为该语言；references / templates / examples 暂为英文 |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md 为该语言；references / templates / examples 暂为英文 |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md 为该语言；references / templates / examples 暂为英文 |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md 为该语言；references / templates / examples 暂为英文 |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md 为该语言；references / templates / examples 暂为英文 |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md 为该语言；references / templates / examples 暂为英文 |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md 为该语言；references / templates / examples 暂为英文 |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md 为该语言；references / templates / examples 暂为英文 |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md 为该语言；references / templates / examples 暂为英文 |

## 目录

```
seedance-2.5-director/
├── README.md / README.<lang>.md   本文件 + 各语言版本
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               给读 AGENTS.md 的工具的指针
├── GEMINI.md               Gemini CLI 扩展上下文
├── gemini-extension.json   Gemini CLI 扩展清单
├── install.sh              一键安装到各工具 / 打包 zip
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         简体中文，权威版本
    │   ├── SKILL.md              入口：工作流 + 十一条铁律
    │   ├── references/           规则手册（平台、写法、一致性、爆款、QC、后期……）
    │   ├── templates/            提示词 / 分镜表 / 剧本 / 资产表 / QC 模板
    │   ├── examples/             改写自实跑的样例提示词
    │   └── scripts/              ffmpeg 抽帧、字符计数、预算估算
    └── seedance25-director-<lang>/  同一 skill 的其他语言版本
```

## 安装

需要：`bash`；脚本功能另需 `ffmpeg`/`ffprobe` 和 `python3`。

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # 所有工具、所有语言
./install.sh claude --lang zh-cn          # 一个工具、一种语言
./install.sh codex --lang en,zh-cn         # 装多种语言
./install.sh cursor --project /path/to/repo --lang zh-cn   # 装到某个项目里
./install.sh all --dry-run             # 只看会装到哪里
./install.sh workbuddy-zip --lang zh-cn   # 打包给 WorkBuddy 上传
```

已有同名目录会自动改名备份。安装方式是复制（部分工具会跳过软链）。建议每个工具只装一种语言；14 种全装时，助手会看到 14 个几乎一样的技能。

### 各工具说明

| 工具 | 用户级目录 | 项目级目录 | 状态 |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ 已按官方文档核实 (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (旧版读 `~/.codex/skills/`) | `.agents/skills/` | ✅ 已按官方文档核实 |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ 已按官方文档核实 (geminicli.com); `/skills list`, `/skills reload` |
| Gemini CLI 扩展 | 整个仓库（含 `gemini-extension.json`，技能在 `skills/` 下） | — | ✅ 已按官方文档核实 |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ 已按官方文档核实 (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ 已按官方文档核实 (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | 客户端「技能 → 添加技能 → 上传技能」 | — | ⚠️ 未验证：官方页面写了"导入本地技能包"，但没写包格式；`./install.sh workbuddy-zip` 按 SKILL.md 文件夹打包，未实测导入 |

安装后：**Claude Code** 输入 `/seedance25-director`（或直接提需求）；**Codex** 输入 `$seedance25-director` 或 `/skills`；**Gemini CLI** 用 `/skills list` 确认；**Cursor** 在 Agent 对话里输入 `/` 搜索 `seedance25`；**CodeBuddy** 打开 `/skills`。

### 只读规则、不装工具

直接从 `skills/seedance25-director/SKILL.md` 开始读，按里面的工作流表跳到需要的文件。

## 快速上手

1. 告诉助手：平台（如小云雀 9:16 10s）、剧情、角色定妆照。
2. 助手按 `SKILL.md` 流程给出：节拍表 → 参考图顺序 → 提示词正文（标字符数）→ 预算。
3. 你确认后自己在平台提交（本技能不替你提交付费任务）。
4. 出片后让助手跑 `scripts/contact_sheet.sh` 做 QC，再用 `scripts/cut_frame.sh` 截衔接帧写下一镜。

## 原则

1. 每次生成都花钱：先报参数和预算，确认后再提交。
2. 脸只认原始定妆照；衔接帧只管机位、站位、光色。
3. 每个镜头从上一镜的构图和站位切过来。
4. 表演自然、节奏紧，不写刻意象征动作。
5. 画质按场景点名这一镜实际有的细纹理，要求清晰锐利、没有块状 / 网格状压缩伪影。
6. 模型配乐后期静音，空尾巴剪掉，烧录字幕无标点，竖屏封面 9:16。
7. 数字不编，未知写"未实测"；仓库里不放任何账号、密码、邮箱、密钥。

## 贡献

- 新的实测结果请写明平台、日期、参数，更新对应的 `references/*.md` 和 `scripts/cost_calc.py` 费率表。
- 先改权威版 `skills/seedance25-director/`，再同步各语言文件夹；`AGENTS.md`、`GEMINI.md` 只做指针。

## 许可证

本仓库采用 [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)（署名-非商业性使用）许可：可自由使用、修改、分享，需署名，禁止商业用途。

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
