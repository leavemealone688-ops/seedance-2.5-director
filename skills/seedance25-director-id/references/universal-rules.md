# Universal Writing Rules (all platforms)

> Basis: our production experience on Xiaoyunque, LibTV, TapNow and Vigloo Studio, plus the public official guides (Volcengine Ark "Seedance 2.5 Prompt Guide", the Xiaoyunque official manual, the BytePlus English edition) — see `sources.md`. When official guidance and hands-on results disagree, trust what you've tested on your platform.

## 1. Prompt skeleton (four parts, keep the order)

```
① Reference map: who each image / video / audio is, what it locks and what it does not
② One-line summary: aspect + duration + look + location + event + shot form (one continuous take / N shots)
③ Per-second timeline: 0-2s … / 2-7s … / 7-10s … (each beat: framing & camera + action + dialogue + sound + end state)
④ Persistent items & negatives: lighting, head count, wardrobe state held throughout; no subtitles / no music / no watermark
```

When a reference image is already accurate, **just point to it — don't re-describe the whole image**. Re-describing fights the image and dilutes attention on the timeline. Only repeat the hard marks that are hard to see or prone to drift (hair silhouette, earrings, sleeve color).

## 2. Per-second timeline

- **Whole seconds**, back to back, last end point = total duration. No `6.7s`, no gaps like `0-3s … 5-6s` (gaps let the model improvise).
- **One main change per beat.** Too little and the model adds things; too much and you get extra cuts or dropped story.
- End a beat with a **visible end state** (`End state: the cup stays on the saucer`) — the cheapest stabilizer there is.
- Don't use timestamps for high-frequency actions ("shakes head three times in one second").
- A typical 10 s clip: `0-2s enter / establish → 2-7s main event (dialogue) → 7-10s reaction / landing`.
- 9-15 s holds 2-4 shots; 12-20 s holds 4-6 beats; for 20-30 s see `long-takes.md`.

## 3. One continuous take vs. multiple shots

- **One take**: write `One continuous shot`, and describe camera movement as continuous motion in one physical space ("the camera glides forward about 40 cm on a track, frame edges closing in continuously"). **Don't** use labels like `SHOT 1`, `CUT`, or an all-caps `CAMERA PUSH` — they invite hard cuts.
- **Multiple shots**: use `Shot 1 (0-3s · medium · locked off)` or `[Shot N (a-b s · framing · single move)]` and say `hard cut`. Each shot ≥ 3 s, at most one main line per shot.
- **One main camera move per beat.** Don't stack push, pan and follow in the same beat.

## 4. Describe only the current frame

The model only sees this prompt and these images — not your previous versions or other shots:

| Don't write | Write instead |
|---|---|
| Cole still sits on the tailgate | Cole sits on the left edge of the open tailgate |
| as before / same as last shot | Spell out camera, blocking and light |
| the revised door no longer has a light | The door has only a push bar, no lights or devices |
| back to the earlier position | Give the exact position: "stands at the pickup's right, about two meters from camera" |
| she rings the bell again | State the count within this clip: "she rings the bell twice" |

## 5. Negatives

- Team rule: write negatives as **FORBIDDEN / "no …" / "do not …"**, never "avoid" (too soft).
- Official guidance and community tests: visual negatives like "no close-ups / no cuts" sometimes summon the very thing. So:
  - **Sound and overlays** (subtitles, BGM, score, watermark) → state the negative directly, at the top and the end, listing synonyms: `no music, no piano, no score, no BGM`.
  - **Visual content** → prefer a positive state held throughout: "the doorframe, the whole table and all four people stay in frame", "the bottom of the frame stops at the knees".
  - Group any unavoidable visual bans in the last paragraph, short phrases, no more than 6-8 items.
- Fixed closing line (Vigloo team habit, works on China platforms too): `只有指定角色说话，其他人不说话。原生环境音效照实生成，不要背景音乐，不要配乐，不要字幕，不要任何文字水印。` English equivalent: `Only the named characters speak. Native ambience as written, no background music, no score, no subtitles, no text or watermark.`

## 6. Characters and reference binding

- Give each person a fixed label at the top and bind the reference: `Image 1 is the elderly woman Edna` / `@图片1 监军`. Use the same label throughout — don't switch between "she" and "the old lady".
- Upload references in **order of first appearance**; prompt numbering must match the upload order.
- The continuity frame always goes last, with "take only camera side, framing, blocking and light; no faces, text or logos".
- State the head count: "Only these two people and this one dog appear."

## 7. Direction and space

- Lock directions, adding a negation if needed: "she runs toward the exit door at frame right, not toward the camera".
- State left/right: "Cole sits on the left edge of the tailgate; Edna stands at his right."
- State orientation of doors, stairs, vehicles: "left-hand drive", "the door stays upright and closed".

## 8. Details

- China platforms accept Chinese or English; our team wrote English dramas fully in English on Xiaoyunque and Chinese dramas in Chinese. Don't mix languages in descriptive sentences within one prompt (dialogue excepted).
- Overseas canvas team rule: **pure ASCII, ≤ 2000 characters** is steadier (TapNow once accepted 14,676 characters, but longer isn't better).
- Count characters with `scripts/count_chars.sh` before delivery; if over the limit, cut repeated wording, never content.
- Niche terms need a visible explanation: `ease-in` → "starts very slow, gradually speeding up".
- No brands, real names or real-world signage.

## 9. Quality: name the fine textures of this scene

A generic "HD, 8K, highly detailed" does nothing. Name the fine textures of **what is actually in this shot**, then ask for sharpness and no compression artifacts:

| Scene | Textures you might name (only what's in frame) |
|---|---|
| Wilderness exterior | Rock surfaces, ripples on water, leaves, distant mountain ridges |
| City at night | Reflections on wet asphalt, brick, glass, neon edges |
| Interior | Fabric weave, wood grain, skin pores, strands of hair |
| Rain scene | Rain streaks, splashes, wet clothing, puddles |

Patterns:
- English: `Sharp, fine detail in the gravel, the water surface and the distant mountains; no blocky or grid-like compression artifacts.`
- Chinese: `碎石、水面和远山的细纹理清晰锐利，细节真实，没有块状或网格状的压缩伪影。`

Rules:
- Name only the textures in this shot; don't paste an exterior line into an interior scene.
- Fine textures (gravel, grass, carpet) are themselves prone to grid artifacts: besides asking for sharpness, let them take up less of the frame or frame a little tighter.
- Put this line in the persistent section, once per prompt.

## 10. Pre-visualize complex blocking

Many people, complex movement, precise camera: block it first with a gray-box / 3D previs, then attach the previs video with "@Video 1 controls only camera movement and path, not look, materials or set". The official release notes say 2.5 improved gray-box referencing (see `sources.md`).
