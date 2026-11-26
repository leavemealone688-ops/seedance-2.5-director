# Overseas Platforms

> All numbers are **as of 2026-11 — verify on the platform**. [Team-tested] = our charges / renders; [Official] = official pages; [Third-party] = reviews. Unknown = "untested".

## Overview

| Platform | Form | Our usual settings | Price reference | Reference syntax |
|---|---|---|---|---|
| Vigloo Studio vigloostudio.com | Canvas: Seedance 2.5 video node + Character nodes | 9:16 · 720p · 4-20 s slider · audio on | ~29 credits/s (12 s = 350, 20 s = 580) [Team-tested] | `@Name` chips, `@image1`, `@audio1` |
| TapNow app.tapnow.ai | Canvas video node | Seedance 2.5 · Omni Reference · generate_audio on · 16:9 delivery | 480p 28 s ≈ 560 Tapies [Team-tested] | `{{Image 1}}` / `{{Video}}` / `{{Audio 1}}` chips |
| Higgsfield higgsfield.ai | Web generator / API | 720p | 5 s = 35 credits [Team-tested] | `Image 1 is …` (upload order) |

## Vigloo Studio [Team-tested]

**Nodes and actions**
- Create a Seedance 2.5 video node: 9:16, 720p, duration slider 4-20 s, audio on (native dialogue + ambience).
- Right-click menu: **Extend Video** (Seedance 2.5 Edit, 5 s minimum, ~300 credits), **Edit Video** (~420 credits), **Extract frame**. **No Trim** — do it in post.
- Don't refresh the canvas (unsaved state is lost or jobs get resubmitted).

**Real-face policy (the big one)**
- Uploaded images or first/last frames containing **real faces (including photoreal AI faces) are rejected**.
- So: characters only via **registered Character nodes**; use an **empty plate** (no people) as the first frame; scenes and props go in as reference images.
- In the prompt **refer only with `@Name` chips or `@image1` — don't describe appearance in text** (text descriptions fight the character node).
- Put a space before `@`; the `@` menu only lists **connected** nodes.
- Voice lock: attach an mp3 as `@audio1` and write "voice per @audio1". If a character should be heard but not seen, don't attach their Character node — attach only the audio.
- Typical setup: 1 scene/prop reference + 2 Character nodes (+ optional 1 audio clip).

**Writing**
- Per-second beats; 4-6 beats for 12-20 s.
- Lock direction with a negation (we've been burned by "ran the wrong way"): "she runs toward the exit door at the end of the hall, back to camera, not toward the camera".
- In long clips props teleport and chase actions get skipped → restate prop positions every beat, split chases into short beats.
- Moderation: don't write blood / corpse / kill / gun; no physical fight contact ("a gap always remains between them, no body contact").
- Fixed closing line: `只有指定角色说话，其他人不说话。原生环境音效照实生成，不要背景音乐，不要配乐，不要字幕，不要任何文字水印。`
- Template: `../templates/canvas-prompt-overseas.md`; example: `../examples/overseas-vigloo-20s-ko.md`.

## TapNow [Team-tested]

- In a canvas video node pick Seedance 2.5, use **Omni Reference**, turn on `generate_audio`.
- A 480p 28 s long take cost about 560 Tapies; we've delivered 16:9 (trailer).
- **Continuing a clip**: attach the previously approved video as a `{{Video}}` reference, then write the continuation prompt.
- Prompt length: it once accepted 14,676 characters; our rule became **pure ASCII, ≤ 2000 characters** — steadier.
- **Click Generate once per job**; refreshing or double-clicking charges twice.
- Never cancel a paid job mid-render.

## Higgsfield

**Official (higgsfield.ai/seedance-2.5 and API docs, read 2026-11) [Official]**
- 4-30 s per generation; audio on by default, can be turned off.
- Up to 50 references: 30 images, 10 videos, 10 audio files.
- Aspect ratios: 21:9, 16:9, 4:3, 1:1, 3:4, 9:16.
- API resolutions: 480p / 720p / 1080p; the web app also has 4K (official Threads announcement, 2026-11-14).
- Also Seedance 2.5 Edit (targeted changes) and Seedance 2.5 Extend (continuation).
- Official advice: check the credit cost shown on the Generate button before you start.

**Team notes**
- 720p · 9:16 · 5 s = 35 credits (~7/s) [Team-tested]; 1080p / 4K prices untested.
- A 480p Draft-then-finalize mode exists [Third-party: a review says it launched 2026-09 and is unavailable in the US]; untested.
- When we checked the official model catalog in 2026-11, Elements (`<<<element_id>>>` placeholders) did not list Seedance 2.5 → use original portraits as image references instead; whether Soul ID can drive 2.5 is untested.
- A start_image locks the entire frame, not just the camera; use it only when frame one must match exactly.

## API channels (team research, official pricing pages, 2026-11)

- BytePlus / Replicate / OpenRouter / fal and others offer pay-as-you-go Seedance 2.5; prices change — check the official pricing page before use.
- Parameter names and limits follow each provider's docs; keep keys in environment variables and **never commit them**.

## Writing tips for overseas platforms

- Write English dramas in English; US dramas use an **American accent** throughout.
- On canvas platforms, refer with chips first; text outside chips covers only action, camera and sound.
- Strict face policy (Vigloo) → Character nodes + empty-plate first frame; relaxed policy (Higgsfield web) → original portraits directly.
- Template: `../templates/canvas-prompt-overseas.md`.
