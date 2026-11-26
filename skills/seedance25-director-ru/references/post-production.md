# Post-production

## 1. Trim dead tails

- The model often leaves a few seconds of staring at the end, or parks the camera on a meaningless composition. Note the out-point during QC and cut.
- The out-point is also the next shot's continuity-frame time (`scripts/cut_frame.sh`).
- A 0.5-1 s "wind-up" at the head can go too, so frame one already has action.

## 2. Mute model music

Even with "no music", the model may add piano. In order:
1. If music is mixed with dialogue, use a vocal-separation tool to keep voice + ambience (results vary; listen afterwards).
2. Clips without dialogue can simply be muted, with ambience re-laid in post.
3. Score the whole episode in post (if needed) so the music stays continuous.

```bash
# picture only, drop all audio
ffmpeg -i in.mp4 -c:v copy -an out_silent.mp4
# frame-accurate trim (re-encode)
ffmpeg -i in.mp4 -ss 0 -to 6.0 -c:v libx264 -crf 18 -c:a aac out_trim.mp4
```

## 3. Loudness

- Normalize the whole episode (short-video platforms commonly target around -14 LUFS; follow the platform's spec):
  `ffmpeg -i in.mp4 -af loudnorm=I=-14:TP=-1.5:LRA=11 -c:v copy out.mp4`

## 4. Burned-in subtitles

- **No punctuation in subtitles**: break with spaces mid-line, no period at the end. Drop question and exclamation marks too; let line breaks carry the tone.
- Big type, high contrast, outline or box; on vertical video keep them above the bottom third, clear of the platform's right-side buttons and bottom caption area.
- About 12-16 Chinese characters or 32-40 Latin characters per line (rule of thumb).
- For foreign-language dramas, time the subtitles from the storyboard's translation column.
- Prompts always say "no subtitles"; subtitles are added only in post.

## 5. Covers

- **Vertical 9:16** (YouTube Shorts, Douyin, Reels all use vertical covers); make a separate 16:9 for horizontal films.
- Use the strongest frame (biggest expression, clearest conflict), or rebuild a sharp version with an image model from the portraits.
- 3-8 big words of conflict or suspense, no spoilers; place text upper-middle, clear of platform UI.
- The person on the cover must match the portrait.
- More in `viral-hooks.md` → "Covers and titles".

## 6. Vertical ↔ horizontal

- Cropping 9:16 to 16:9 loses heads and feet; if you need both, **generate both**, or generate with a safe area (subject centered, margins top/bottom) and crop.
- If a contest requires 16:9, design compositions for 16:9 from the storyboard stage (`formats-and-budget.md`).

## 7. Delivery list

- Final cut (highest resolution) + a small preview
- Cover (matching aspect)
- Subtitle file (SRT, for platform captions or translation)
- Shot list and reference list (for reuse)
