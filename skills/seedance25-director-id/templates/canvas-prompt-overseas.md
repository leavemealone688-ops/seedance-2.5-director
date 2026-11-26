# Template: overseas canvas prompt (Vigloo Studio / TapNow / Higgsfield)

## A. Attachment list (for humans)

| Slot | Content | Note |
|---|---|---|
| @CharacterA / @CharacterB | Character nodes (Vigloo) | Don't describe looks in text |
| @image1 | Main location plate (empty, no people) | No photoreal faces in uploads (Vigloo) |
| @image2 | Prop / location detail | |
| @audio1 | Clean 3-5 s recording of one character | Locks only that character's voice |
| {{Video}} | Previously approved clip (TapNow continuation) | Never a reject |
| Duration / aspect / resolution | e.g. 20s · 9:16 · 720p · audio on | |
| Estimated cost | Per the Generate button; awaiting OK □ | |

## B. Vigloo style (chips for reference; body can be Chinese, Korean or English)

```
Generate one standalone <N>-second shot. Vertical 9:16, 720p. <Location and time>: the space and <key anchors> follow @image1. <Prop> follows @image2; there is only this one. Only @<CharacterA> and @<CharacterB> appear; no one else. Live-action <genre> series look, fully photoreal, not 3D, not animation. <Light: only the practical lights in the set>. Eyelines land on their targets, never the lens; only the speaking character moves their lips. Dialogue is native <language> voice, only the lines written below. Hands stay in medium shots, no finger close-ups. No added text, brands or logos. Sharp, fine detail in <the fine textures actually in this shot>; no blocky or grid-like compression artifacts. <A gap always remains between them, no body contact.>

0-4s: @<CharacterA> <framing & camera>. <action>. Says, <tone>: "<line>" Only @<CharacterA> speaks.
4-8s: <framing & camera>. <action, direction locked with a negation>. No one speaks.
8-12s: …
12-16s: … voice per @audio1 … no one in frame opens their mouth.
16-20s: … the frame holds still for the last half second.

Only the named characters speak. Native ambience as written, no background music, no score, no subtitles, no text or watermark.
```
Notes: a space before `@`; the `@` menu only lists connected nodes; don't refresh the canvas.

## C. TapNow / Higgsfield style (English, pure ASCII, ideally ≤ 2000 characters)

```
{{Image 1}} is the start frame: it locks composition, positions and props. {{Image 2}} is <name A>: same face, hair, wardrobe. {{Audio 1}} is only <name A>'s voice timbre.
<N> seconds, 16:9, one continuous take in <location>, a single slow push-in.
0-3s: <one action>. End state: <visible state>.
3-7s: <name A> says: "<line>" Others keep their mouths closed. End state: ...
7-10s: the camera glides forward about 40 cm on a track, frame edges closing in continuously; everyone stays in frame. End state: camera locked closer.
10-14s: ...
Throughout: <persistent items>. Sharp, fine detail in <the fine textures actually in this shot>; no blocky or grid-like compression artifacts. No subtitles. No music, no BGM, no score. Only the written dialogue plus <ambience>.
```
If Higgsfield's web app doesn't support `{{}}` chips, write `Image 1 is …` (upload order).
