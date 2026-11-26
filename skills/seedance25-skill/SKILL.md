---
name: seedance25-skill
description: Seedance 2.5 视频提示词、分镜与剧本脚本写作。用于写或改 Seedance 2.5 单条提示词（4-30 秒）、把剧本拆成分镜和逐秒节拍、做角色/场景/道具/光色一致性、接镜连续性、竖屏短剧爆款钩子、对白口型、审核避坑、出片 QC 与后期。分国内平台（小云雀、LibTV、即梦）和海外平台（Vigloo Studio、TapNow、Higgsfield）两套写法。
---

# Seedance 2.5 提示词 · 分镜 · 剧本脚本

一套从剧本到可提交提示词的完整流程，来自真实短剧与预告片生产。规则优先级：**平台硬限制 > 本包通用规则 > 个人风格**。

## 0. 先判断三件事

1. **平台在哪**：国内（小云雀 / LibTV / 即梦）读 `references/domestic.md`；海外画布（Vigloo Studio / TapNow / Higgsfield）读 `references/overseas.md`。两边的参考图写法、真人脸政策、计费不同，不能混用。
2. **交付形态**：竖屏 9:16 短剧，还是 16:9 横屏短片 / 预告片？读 `references/formats-and-budget.md`。
3. **要的是什么**：剧本 → 分镜 → 提示词，还是只改一条提示词，还是 QC 已出片？按下面的流程表跳到对应步骤。

## 1. 工作流

| 步骤 | 做什么 | 读哪份 |
|---|---|---|
| 1 定位与剧本 | 一句话定位、前 3 秒钩子、可拍单集剧本 | `references/viral-hooks.md`、`references/script-and-storyboard.md`、`templates/episode-script.md` |
| 2 资产 | 锁角色定妆照、场景主图/反打、道具状态，建资产表 | `references/character-lock.md`、`references/consistency.md`、`templates/asset-bible.md` |
| 3 分镜 | 拆成 4-30 秒生成单元，每单元逐秒节拍 | `templates/script-to-shots.md`、`templates/storyboard-table.md`、`references/long-takes.md`、`references/action-and-fights.md` |
| 4 提示词 | 按平台模板写，数字符 | `references/universal-rules.md`、`templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`、`examples/` |
| 5 表演与节奏 | 去刻意象征动作，压紧节奏 | `references/acting-and-pacing.md` |
| 6 声音 | 原生对白、多语种、声线锁定、禁 BGM | `references/dialogue-audio.md` |
| 7 提交前 | 审核风险、参考顺序、画幅、预算（等用户确认） | `references/moderation-and-pitfalls.md`、`references/formats-and-budget.md`、`scripts/cost_calc.py` |
| 8 出片 QC | 联系表抽帧查脸、手、穿模、文字、尾巴 | `references/qc-checklist.md`、`scripts/contact_sheet.sh`、`templates/qc-report.md` |
| 9 接下一镜 | 从剪辑出点截衔接帧 | `references/continuity.md`、`scripts/cut_frame.sh` |
| 10 后期与发布准备 | 剪尾巴、静音模型配乐、无标点字幕、9:16 封面、AI 标识 | `references/post-production.md`、`references/domestic.md`（AI 内容标识） |

平台选择见 `references/platform-comparison.md`；来源见 `references/sources.md`。

## 2. 十条铁律（每条提示词都要过）

1. **逐秒节拍**：整数秒、首尾相接、不留空档（`0-2s / 2-7s / 7-10s`）。每段只发生一件主要的事。
2. **只描述当前画面**：模型没见过你之前的版本。不写 still、as before、again、修改后、和上一条一样。需要延续的状态直接写成现在时（"Cole sits on the tailgate"）。
3. **脸只认锁定的原始定妆照**：绝不用生成视频的截帧当脸部参考。衔接帧只管机位、景别、站位、光色。
4. **每张参考图写清用途和不用的部分**：`Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`。
5. **负面约束集中、简短、写成 FORBIDDEN / 禁止 / 不要**，不写 avoid。视觉上能用正向状态表达的，优先写正向（"门框和四个人全程留在画面里"）。
6. **对白写进它发生的那一秒**，逐字、带说话人、带声音描述；写明"只有 X 说话"，不说话的人写 `mouth stays closed, no lip movement`。
7. **每个动作都要有理由**：不做刻意的象征动作（揣钱、指长椅、对着镜头凝视），节奏紧，结尾不留长时间对视。
8. **新镜头从上一镜的构图和站位切过来**：同一侧机位、同样的人物位置，除非剧本明确换场。
9. **不要字幕、不要水印、不要背景音乐**，开头和结尾各写一次；画面里不需要的文字一律"无字、无标识"。
10. **数字不编**：价格、上限、积分写来源和日期，不知道写"未实测"。

## 3. 输出格式

- 给用户的每条提示词前面附一张**节拍摘要表**（不粘贴进平台）：秒段 / 景别机位 / 动作 / 台词 / 声音。
- 提示词正文单独放代码块，标出字符数（`wc -m`）和平台上限。
- 列出参考图挂载顺序：`参考图1 = 角色A定妆照` …
- 写明预计花费的计算方式（按平台显示为准），未经用户确认不提交付费任务。

## 4. 不做的事

- 不替用户点生成、不购买积分、不取消已提交的付费任务。
- 不在提示词里写真实人名、品牌、账号。
- 不承诺平台没公开的能力。
