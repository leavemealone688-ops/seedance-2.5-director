# Seedance 2.5 提示词 · 分镜 · 剧本脚本 Skill

一套给 AI 编程助手 / 智能体用的 **Seedance 2.5 视频生产技能包**：从一句话定位、可拍剧本、分镜拆解，到可直接粘贴的提示词、出片 QC 和后期。规则来自真实的竖屏短剧与预告片生产，并对照了官方公开指南。

- 分**国内平台**（小云雀、LibTV、即梦）和**海外平台**（Vigloo Studio、TapNow、Higgsfield）两套写法
- 全面一致性：角色、服装状态、场景拓扑、道具状态、光色、轴线与银幕方向、天气、跨集、资产命名
- 爆款结构：前 3 秒钩子、留存节奏、反转兑现、集尾钩子、封面标题、用后台数据迭代
- 模板 + 样例 + 脚本（联系表抽帧、衔接帧、字符计数、预算估算）

> 平台价格、上限、功能随时变化。文中数字都标了来源和日期（截至 2026-11），**使用前请在平台核实**；没验证过的写"未实测"。

## 目录

```
seedance25-skill/
├── README.md               本文件
├── LICENSE                 CC BY-NC 4.0 许可证全文
├── AGENTS.md               给读 AGENTS.md 的工具的指针
├── GEMINI.md               Gemini CLI 扩展上下文
├── gemini-extension.json   Gemini CLI 扩展清单
├── install.sh              一键安装到各工具目录 / 打包 zip
└── skills/
    └── seedance25-skill/   ← 唯一权威内容（标准 Agent Skill 文件夹）
        ├── SKILL.md        入口：工作流 + 十条铁律
        ├── references/     规则手册（平台、写法、一致性、爆款、QC、后期……）
        ├── templates/      提示词 / 分镜表 / 剧本 / 资产表 / QC 模板
        ├── examples/       改写自实跑的样例提示词
        └── scripts/        ffmpeg 抽帧、字符计数、预算估算
```

## 安装

需要：`bash`；脚本功能另需 `ffmpeg`/`ffprobe` 和 `python3`。

```bash
git clone <你的仓库地址> seedance25-skill
cd seedance25-skill
./install.sh all            # 装到下面所有工具的用户级目录
./install.sh claude         # 只装一个
./install.sh cursor --project /path/to/your/repo   # 装到某个项目里
./install.sh all --dry-run  # 只看会装到哪里
```

已有同名目录会自动改名备份。安装方式是复制（部分工具会跳过软链）。

### 各工具说明

| 工具 | 用户级目录 | 项目级目录 | 兼容性 |
|---|---|---|---|
| Claude Code | `~/.claude/skills/seedance25-skill/` | `.claude/skills/` | ✅ 按官方文档（code.claude.com/docs/en/skills）核实 |
| OpenAI Codex（CLI / IDE） | `~/.agents/skills/`（旧版读 `~/.codex/skills/`） | `.agents/skills/` | ✅ 按官方文档核实；旧版 Codex 需在 `config.toml` 打开 skills 功能 |
| Gemini CLI | `~/.gemini/skills/`（或 `~/.agents/skills/`） | `.gemini/skills/`（工作区需 `/trust`） | ✅ 按官方文档（geminicli.com）核实；`/skills list` 查看、`/skills reload` 刷新 |
| Gemini CLI 扩展 | 整个仓库作为扩展（含 `gemini-extension.json`，技能在 `skills/` 下） | — | ✅ 扩展格式按官方文档核实；安装命令以官方文档为准 |
| Cursor | `~/.cursor/skills/`（或 `~/.agents/skills/`） | `.cursor/skills/` | ✅ 按官方文档（cursor.com/docs/skills）核实；Cursor 也会读 `~/.claude/skills`、`~/.codex/skills` |
| CodeBuddy Code（腾讯） | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ 按官方文档（codebuddy.ai/docs/zh/cli/skills）核实；`/skills` 查看 |
| WorkBuddy（腾讯桌面端） | 客户端「技能 → 添加技能 → 上传技能」导入本地技能包 | 工作目录下的项目技能目录 | ⚠️ 未验证：官方页面写了"导入本地技能包"，但没写包格式。`./install.sh workbuddy-zip` 生成的 zip 是按 SKILL.md 文件夹打包的，未实测导入 |

各工具安装后：
- **Claude Code**：输入 `/seedance25-skill` 手动调用，或直接提需求（"帮我把这场戏写成 Seedance 2.5 提示词"）自动触发。
- **Codex**：输入 `$seedance25-skill` 或 `/skills` 选择。
- **Gemini CLI**：`/skills list` 确认已加载；用户级目录不受 `/trust` 影响。
- **Cursor**：在 Agent 对话里输入 `/` 搜索 `seedance25-skill`。
- **CodeBuddy**：`/skills` 面板查看。

### 只读规则、不装工具

直接从 `skills/seedance25-skill/SKILL.md` 开始读，按里面的工作流表跳到需要的文件。

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
5. 模型配乐后期静音，空尾巴剪掉，烧录字幕无标点，竖屏封面 9:16。
6. 数字不编，未知写"未实测"。
7. 仓库里不放任何账号、密码、邮箱、密钥。

## 贡献

- 新的实测结果请写明平台、日期、参数，更新对应的 `references/*.md` 和 `scripts/cost_calc.py` 费率表。
- 只改 `skills/seedance25-skill/` 下的内容；`AGENTS.md`、`GEMINI.md` 只做指针。

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
