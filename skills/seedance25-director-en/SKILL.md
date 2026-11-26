---
name: seedance25-director-en
description: (English) Write Seedance 2.5 video prompts, storyboards and shootable scripts. Use for writing or fixing a single Seedance 2.5 prompt (4-30 s), breaking a script into shots with per-second beats, keeping characters/scenes/props/lighting consistent, continuity cuts, vertical short-drama hooks, dialogue and lip sync, avoiding moderation rejections, render QC and post. Covers China platforms (Xiaoyunque, LibTV, Jimeng) and overseas platforms (Vigloo Studio, TapNow, Higgsfield).
---

# Seedance 2.5 Prompts · Storyboards · Scripts

A complete pipeline from script to a submit-ready prompt, distilled from real short-drama and trailer production. Priority order: **platform hard limits > the rules in this pack > personal style**.

## 0. Decide three things first

1. **Which platform**: China (Xiaoyunque 小云雀 / LibTV / Jimeng 即梦) → read `references/domestic.md`; overseas canvases (Vigloo Studio / TapNow / Higgsfield) → read `references/overseas.md`. Reference syntax, real-face policies and billing differ; don't mix them.
2. **Delivery format**: vertical 9:16 short drama, or 16:9 short film / trailer? Read `references/formats-and-budget.md`.
3. **What's being asked**: script → storyboard → prompts, fixing one prompt, or QC on a finished render? Jump to the matching step below.

## 1. Workflow

| Step | What to do | Read |
|---|---|---|
| 1 Logline & script | One-line pitch, a 3-second hook, a shootable episode script | `references/viral-hooks.md`, `references/script-and-storyboard.md`, `templates/episode-script.md` |
| 2 Assets | Lock character reference portraits, scene main/reverse plates, prop states; build the asset bible | `references/character-lock.md`, `references/consistency.md`, `templates/asset-bible.md` |
| 3 Storyboard | Split into 4-30 s generation units, each with per-second beats | `templates/script-to-shots.md`, `templates/storyboard-table.md`, `references/long-takes.md`, `references/action-and-fights.md` |
| 4 Prompt | Use the platform template; count characters | `references/universal-rules.md`, `templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`, `examples/` |
| 5 Acting & pacing | Remove on-the-nose symbolic gestures, tighten pacing | `references/acting-and-pacing.md` |
| 6 Sound | Native dialogue, multilingual lines, voice lock, no BGM | `references/dialogue-audio.md` |
| 7 Before submitting | Moderation risks, reference order, aspect ratio, budget (wait for the user's OK) | `references/moderation-and-pitfalls.md`, `references/formats-and-budget.md`, `scripts/cost_calc.py` |
| 8 Render QC | Contact sheets to check faces, hands, clipping, text, dead tails | `references/qc-checklist.md`, `scripts/contact_sheet.sh`, `templates/qc-report.md` |
| 9 Next shot | Grab the continuity frame at the edit out-point | `references/continuity.md`, `scripts/cut_frame.sh` |
| 10 Post & release prep | Trim tails, mute model music, punctuation-free subtitles, 9:16 cover, AI-content labels | `references/post-production.md`, `references/domestic.md` (AI labeling) |

Platform choice: `references/platform-comparison.md`. Sources: `references/sources.md`.

## 2. Eleven hard rules (every prompt must pass)

1. **Per-second beats**: whole seconds, back to back, no gaps (`0-2s / 2-7s / 7-10s`). One main thing happens per beat.
2. **Describe only the current frame**: the model has never seen your earlier versions. Never write still, as before, again, "revised", "same as last time". Write continuing states in the present tense ("Cole sits on the tailgate").
3. **Faces come only from the locked original reference portraits**: never use frames from generated video as a face reference. The continuity frame controls only camera side, framing, blocking and light.
4. **State what each reference is for and what it must not control**: `Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`.
5. **Negatives are grouped, short, and written as FORBIDDEN / "no …"**, never "avoid". Anything visual that can be phrased as a positive state should be ("the doorframe and all four people stay in frame").
6. **Dialogue goes in the exact second it happens**, verbatim, with speaker and voice description; write "only X speaks", and for silent characters `mouth stays closed, no lip movement`.
7. **Every action needs a reason**: no on-the-nose symbolic gestures (pocketing the money, pointing at the bench, staring into the lens), tight pacing, no long staring hold at the end.
8. **Each new shot cuts from the previous shot's framing and blocking**: same camera side, same positions, unless the script clearly changes scene.
9. **No subtitles, no watermark, no background music** — say it once at the top and once at the end; any text not needed in frame is "no lettering, no logos".
10. **Never invent numbers**: prices, limits and credits carry a source and date; if unknown, write "untested".
11. **Quality wording fits the scene**: name only the fine textures actually in this shot (exteriors: rocks, water, leaves, distant mountains; interiors: fabric, wood grain, skin, hair) and ask for "sharp fine detail, no blocky or grid-like compression artifacts". No one-size-fits-all quality buzzwords, and don't list things that aren't in frame.

## 3. Output format

- Put a **beat summary table** before each prompt (not pasted into the platform): seconds / framing & camera / action / dialogue / sound.
- Put the prompt body in its own code block, with its character count (`wc -m`) and the platform limit.
- List the reference upload order: `Image 1 = character A portrait` …
- State how the cost is estimated (the platform's display wins); never submit a paid job without the user's confirmation.

## 4. Don't

- Don't click generate for the user, buy credits, or cancel a paid job already submitted.
- Don't put real people's names, brands or accounts in prompts.
- Don't promise capabilities the platform hasn't published.
