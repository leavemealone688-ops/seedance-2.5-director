🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Seedance 2.5 Prompts · Storyboards · Scripts Skill**

A **Seedance 2.5 video-production skill pack** for AI coding assistants and agents: from a one-line pitch and a shootable script, through shot breakdowns, to paste-ready prompts, render QC and post. The rules come from real vertical short-drama and trailer production, checked against the official public guides.

- Two playbooks: **China platforms** (Xiaoyunque, LibTV, Jimeng) and **overseas platforms** (Vigloo Studio, TapNow, Higgsfield)
- Full consistency: characters, wardrobe states, scene layout, prop states, light and color, axis and screen direction, weather, cross-episode, asset naming
- Viral structure: 3-second hooks, retention rhythm, twists and payoffs, episode-end hooks, covers and titles, iterating with your own analytics
- Templates + examples + scripts (contact sheets, continuity frames, character counts, budget estimates)
- Available in 14 languages

> Platform prices, limits and features change at any time. Every number carries a source and date (as of 2026-11): **verify on the platform before use**. Anything we haven't tested is marked "untested".

## What this skill does for creators

The everyday problems of making AI drama with Seedance 2.5, and what changes when your assistant follows this skill. The examples are short excerpts of the prompt style the skill teaches.

### 1. Turn a one-line idea into shootable shot prompts

**Before**
```text
An old woman comforts a man whose dog is sick.
```
**After**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. Keep faces, outfits, scenes and props consistent across shots and episodes

**Before**
```text
Same woman as before, same clothes.
```
**After**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. Make every shot cut cleanly from the last

**Before**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**After**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. Hook viewers in 3 seconds, keep them watching, end each episode on a cliffhanger

**Before**
```text
0-3s: slow aerial shot of the city at dusk.
```
**After**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. Dialogue, lip sync and voice that stay on the right character

**Before**
```text
Lines listed at the end. "Her lips part."
```
**After**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. Fewer rejected or wasted renders, and a budget before you spend credits

**Before**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**After**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. Write for the platform you are actually on (China vs overseas)

**Before**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**After**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. QC checklists and ffmpeg scripts instead of eyeballing

**Before**
```text
Watch it once, notice six fingers after posting.
```
**After**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### Who it's for

- Short-drama creators making vertical series for Douyin, Shorts, Reels or drama apps
- AI filmmakers making shorts, trailers and long takes
- Brand and ad teams who need repeatable characters and on-spec cuts
- Contest entrants who must hit a duration, aspect ratio and labeling rules

No made-up success rates here: the skill tells your assistant to use only real analytics and real platform prices.

## Languages

Every language is its own valid skill folder with a unique `name`. Install only the one you need with `--lang`. Skill names are `seedance25-director[-<lang>]` (no dot), because skill names may only use lowercase letters, digits and hyphens.

| Language | Folder | `--lang` | Translated |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | Everything (SKILL.md, references, templates, example notes) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | Everything (SKILL.md, references, templates, example notes) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | Everything (SKILL.md, references, templates, example notes) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | Everything (SKILL.md, references, templates, example notes) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md in this language; references / templates / examples in English for now |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md in this language; references / templates / examples in English for now |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md in this language; references / templates / examples in English for now |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md in this language; references / templates / examples in English for now |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md in this language; references / templates / examples in English for now |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md in this language; references / templates / examples in English for now |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md in this language; references / templates / examples in English for now |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md in this language; references / templates / examples in English for now |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md in this language; references / templates / examples in English for now |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md in this language; references / templates / examples in English for now |

## Layout

```
seedance-2.5-director/
├── README.md / README.<lang>.md   this file + translations
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               pointer for tools that read AGENTS.md
├── GEMINI.md               Gemini CLI extension context
├── gemini-extension.json   Gemini CLI extension manifest
├── install.sh              install into each tool / build zips
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         Simplified Chinese, the canonical version
    │   ├── SKILL.md              entry: workflow + 11 hard rules
    │   ├── references/           rulebooks (platforms, writing, consistency, hooks, QC, post…)
    │   ├── templates/            prompt / storyboard / script / asset / QC templates
    │   ├── examples/             example prompts adapted from real renders
    │   └── scripts/              ffmpeg frame grabs, character count, budget estimate
    └── seedance25-director-<lang>/  same skill in another language
```

## Install

Needs `bash`; the scripts also need `ffmpeg`/`ffprobe` and `python3`.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # every tool, every language
./install.sh claude --lang en          # one tool, one language
./install.sh codex --lang en,ko         # several languages
./install.sh cursor --project /path/to/repo --lang en   # into one project
./install.sh all --dry-run             # just show where it would go
./install.sh workbuddy-zip --lang en   # zip for WorkBuddy upload
```

An existing folder with the same name is renamed as a backup. Skills are copied, not symlinked (some tools skip symlinks). Tip: install one language per tool; with all 14 installed, the assistant sees 14 near-identical skills.

### Tool notes

| Tool | User folder | Project folder | Status |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ checked against official docs (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (older versions read `~/.codex/skills/`) | `.agents/skills/` | ✅ checked against official docs |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ checked against official docs (geminicli.com); `/skills list`, `/skills reload` |
| Gemini CLI extension | the whole repo (has `gemini-extension.json`, skills under `skills/`) | — | ✅ checked against official docs |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ checked against official docs (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ checked against official docs (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | client: Skills → Add skill → Upload a local skill package | — | ⚠️ untested: the official page mentions importing a local skill package but not its format; `./install.sh workbuddy-zip` zips the SKILL.md folder, import not tested |

After installing: in **Claude Code** type `/seedance25-director-en` (or just describe the task); in **Codex** type `$seedance25-director-en` or `/skills`; in **Gemini CLI** check `/skills list`; in **Cursor** type `/` in Agent chat and search `seedance25`; in **CodeBuddy** open `/skills`.

### Just read the rules

Start at `skills/seedance25-director-en/SKILL.md` and follow its workflow table to the files you need.

## Quick start

1. Tell the assistant the platform (e.g. Xiaoyunque 9:16 10s), the story and the character portraits.
2. It follows `SKILL.md` and returns: beat table → reference upload order → prompt body (with character count) → budget.
3. You confirm and submit on the platform yourself (the skill never submits paid jobs for you).
4. After the render, have it run `scripts/contact_sheet.sh` for QC, then `scripts/cut_frame.sh` to grab the continuity frame for the next shot.

## Principles

1. Every render costs money: state settings and budget first, submit only after confirmation.
2. Faces come only from the original portraits; continuity frames control only camera, blocking and color.
3. Every shot cuts from the previous shot's framing and blocking.
4. Natural acting, tight pacing, no on-the-nose symbolic gestures.
5. Ask for sharp detail on the textures actually in the shot, with no blocky or grid-like compression artifacts.
6. Mute model music in post, trim dead tails, punctuation-free burned-in subtitles, 9:16 covers.
7. Never invent numbers; unknown means "untested". No accounts, passwords, emails or keys in the repo.

## Contributing

- New test results: give platform, date and settings; update the matching `references/*.md` and the rate table in `scripts/cost_calc.py`.
- Change the canonical `skills/seedance25-director/` first, then the language folders. `AGENTS.md` and `GEMINI.md` are pointers only.

## License

Licensed under [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (Attribution-NonCommercial): free to use, adapt and share with attribution; no commercial use.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
