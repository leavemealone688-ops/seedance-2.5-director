# Dialogue, Lip Sync and Sound

## Native audio (default)

- Let Seedance 2.5 **generate dialogue and ambience natively**; add BGM in post only if needed. We tried voice references made in advance and re-dubbing in post (TTS sounded mechanical, the re-dub was rejected); in the end we kept the native audio.
- Describe the voice in words: age, gender, timbre, emotion, pace.
  - `a warm, slightly husky older American female voice, tender and steady, at a natural conversational pace`
  - `低沉沙哑男声，带气声，嗓音撕裂，慢速`
- English dramas use an **American accent** throughout.

## Writing lines

- **Put the verbatim line in the second it happens**, not in a list at the end:
  - `2-7s: Edna looks at Cole and speaks in a warm, husky older American female voice: "Don't let fear be what he sees." Precise lip sync. Only Edna speaks.`
  - `第4秒监军俯身开口，口型同步，用普通话说："按下去，这岛就归他们。"声线：尖细阴柔男声，阴狠，中速。`
- Every speaking beat says **only X speaks**; silent characters get `mouth stays closed, no lip movement`.
- **Never write `lips part`** (it opens mouths).
- **Don't use gasp, breath, panting as sound instructions** — they produce odd noises; convey emotion through delivery ("voice trembling", "on the verge of tears").
- If someone steals a line: shorten the line, lengthen the beat, put the line inside that beat; don't fix it by piling on sync instructions.

## Speech budget

- Roughly 2.5-3 words/s in English and 3-4 characters/s in Chinese feel natural (rule of thumb, not systematically measured). Over that, split the line or add seconds.
- In a 10 s clip, one or two main lines is best, leaving room to enter and react.

## Multilingual

- For non-Chinese dialogue on China platforms, name the language before the line: "dialogue is native Korean voice, only the Korean lines written below".
- Chinese dialogue needs no language prefix, but "用普通话说" (in Mandarin) reduces accent drift.
- Keep a translation next to foreign lines in the storyboard for review and subtitles; the prompt contains only the original.
- Don't mix two languages of dialogue in one clip unless the story needs it — accents bleed into each other.

## Off-screen / through-the-door / phone voices

- State the source and who doesn't open their mouth: "a muffled male voice comes from the other side of the door … no one in frame opens their mouth, @Mina's mouth stays closed."
- For an unseen speaker on overseas canvases, lock the voice with `@audio1` and don't attach their Character node.

## Voice lock

- China platforms: one fixed voice description per character, reused verbatim across the series.
- Overseas canvases / platforms with audio references: attach a clean 3-5 s recording of **a different line** by that character as `@audio1`, and write "voice timbre per @audio1, for this character only". Official and our tests: binding raises the hit rate but doesn't play the clip back verbatim; you still have to listen to every shot.
- The recording must be licensed (your own generated character voice or authorized recordings) — no real celebrity voices.

## Ambience and music

- Write specific ambience: `quiet morning air, soft footsteps on gravel, a light tail tap`.
- **No music**: say it at the top and end, with synonyms: `no music, no piano, no harp, no score, no BGM` / `不要背景音乐，不要配乐`. The model may still add piano → mute in post (`post-production.md`).
- When something is a sound effect, not speech: "this is an ambient effect, not dialogue, no words can be made out, no one in frame speaks".

## Lip-sync post-processing

- Native lip sync is usually good enough. If it's clearly off, **re-render** first (shorter line, more seconds).
- If you must fix it in post, third-party lip-sync tools work, but they change the mouth area and can drift from the portrait — run face QC again afterwards. We used post lip sync on earlier projects; alignment needs frame-by-frame checking.
