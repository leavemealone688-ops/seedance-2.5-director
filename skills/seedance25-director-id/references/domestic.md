# China Platforms

> All numbers are **as of 2026-11 — verify on the platform**. Source tags: [Team-tested] = our own charges / renders; [Official] = official pages; [Third-party] = media or reviews. Unknown = "untested".

## Overview

| Platform | Entry | Our usual settings | Price reference | Reference syntax |
|---|---|---|---|---|
| Xiaoyunque 小云雀 xiaoyunque.com | Generate directly from the home video box | Seedance 2.5 · 参考生成 (reference mode) · 9:16/16:9 · 10s · 720P | 200 credits per 10 s clip [Team-tested] | `@图片N` (upload order); English prompts with `Image N is …` also render [Team-tested] |
| LibTV liblib.tv | Canvas nodes + official CLI | Seedance 2.5 "全能参考" (omni reference) | 9 s = 348 credits (with an 84% discount) [Team-tested]; one 30 s clip charged 1,159 credits [Team-tested] | Reference after wiring nodes; follow the node hints |
| Jimeng 即梦 | Web "视频生成", pick Seedance 2.5 | Untested | Untested; public reports below | Official manual uses `@图片N`; untested by us |

## Xiaoyunque (our main platform)

**Workflow [Team-tested]**
1. Open `https://www.xiaoyunque.com/home` and start from the video input box — no project needed.
2. Pick Seedance 2.5 → 参考生成 → aspect → 10s → 720P.
3. **Upload references in list order**; upload order is `图片1…N`. We usually use 4: character portraits (lead first) → animal / key prop → continuity frame (last). Platform maximum: untested (the model's official cap is 30 images, see `sources.md`, but the front end may allow fewer).
4. Paste the prompt — **hard limit 5000 characters** [Team-tested]; check credits, submit.
5. Renders take about 5-10 minutes; come back about 10 minutes after submitting. Hover the card and click the download icon.
6. Run `qc-checklist.md`.

**Other notes**
- With a video reference: planned ~260 credits per 10 s; confirm on the checkout screen (not fully tested).
- 1080P: our research notes record Xiaoyunque launching 1080P on 2026-08-14 [Third-party, relayed]; price untested.
- Early episodes were generated in segments SEG_A / SEG_B / SEG_C: run the next only after the previous one passes.
- Membership credits refresh monthly (check your account page for the date).

**"视频可能不合规" (video may be non-compliant)**
- Symptom: generation ends with this notice and no video.
- Fix: **resubmit with inputs completely unchanged**. In our experience these rejections are refunded and an unchanged retry often passes.
- Only after repeated rejections, look for sensitive words (`moderation-and-pitfalls.md`) and tell the owner before changing anything.

**Common side effects**
- The model often adds piano / score → write `no music, no piano, no harp, no score`, and still mute in post.
- Garbled background signage → "building facade with no signs and no lettering", or move the sign out of frame with the camera; mild garbling can be judged in post.
- Several seconds of staring at the end → give the last beat only 1 second ("one breath") and trim in post.

**Shared browser**: touch only your own tab; never close the page or cancel a paid job mid-render.

## LibTV (liblib.tv)

- Pick the Seedance 2.5 "全能参考" node on the canvas [Team-tested].
- **CLI submissions are charged full price; discounts / free quotas only apply to web and App submissions** [Team-tested]. Do the math before batching via CLI.
- One 30 s clip has a recorded charge, but multi-shot switching quality hasn't been evaluated systematically.
- Aspect options, reference cap, prompt limit: untested.

## Jimeng (即梦)

Verified from public information:
- ByteDance Seed official blog: Seedance 2.5 launched 2026-07-31; "即梦网页端-视频生成-选择 Seedance 2.5" is one entry point; up to 30 s per generation, up to 30 images / 10 videos / 10 audio references [Official].
- 2026-11-13: Jimeng launched a Seedance 2.5 4K tier with a 480P draft mode [Official Douyin account / third-party reports].
- Prices: membership-equivalent prices in media reports change with promotions, so we don't hard-code them [Third-party]; the checkout screen wins.

Untested by us: duration options, reference cap, prompt limit, whether rejections are refunded. Run one small test before batching.

## Publishing in China: AI-content labeling

- The *Measures for Labeling AI-Generated Synthetic Content* took effect on **2025-09-01**: publishers must declare AI generation, use the platform's labeling function, and must not maliciously remove or alter labels [Official, see `sources.md`].
- Douyin: on the publish page, "添加自主声明 → 内容由AI生成" (labels may change).
- Unlabeled content may be auto-tagged by the platform as "suspected AI-generated".
- Don't strip the generator's AI watermark or metadata.
- This pack doesn't publish or schedule — it only delivers the finished cut.

## Writing tips for China platforms

- Write Chinese dramas in Chinese; for dialogue write "用普通话说：" plus a voice description ("苍老沙哑男声，带气声，中速").
- Always `@图片N` + purpose: "@图片3 明代白绸降书和石案（道具、字迹和冷蓝色调严格按此图）".
- Moderation is stricter than overseas: avoid blood, corpses, killing, guns, open flame, beatings, anything sensitive with minors, political allusions (`moderation-and-pitfalls.md`).
- Template: `../templates/shot-prompt-domestic.md`.
