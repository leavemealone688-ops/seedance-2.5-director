# Moderation and Common Pitfalls

## Moderation-safe phrasing

| Type | Suggestion |
|---|---|
| Blood, wounds, medical procedures | `no blood, no medical procedure`; show wounds as "a clean bandage"; no surgery on screen |
| Weapons | If possible "no weapons"; if required, only a silhouette or a glint |
| Fire, explosions | Suggest with light color; "no open flame"; fantasy fire as "dark red-orange light", never burning people |
| Fights | No beatings or stomping close-ups; use restrained actions like "a hand pins a wrist"; "a gap always remains between them, no body contact"; feet and boots out of frame |
| Sensitive words | In Chinese avoid 血 / 尸体 / 杀 / 枪 / 死; use "falls", "stops moving", "no red liquid either" |
| Real people, brands, logos | No real names; cars, clothes, signs: "no logos, no lettering" |
| Minors | Avoid any sensitive situation |
| History / politics | Fictionalize; no allusions to real politics |
| Exposure | Describe complete clothing |
| Real-face references (overseas canvases) | Vigloo rejects uploads with photoreal faces → Character nodes + empty-plate first frame |

Safety lines:
- `No weapons, no blood, no fire, no medical procedure. No text on screen.`
- `不出现武器、血迹、明火。画面中不要任何文字、字幕、水印。`

## After a rejection

1. Xiaoyunque "视频可能不合规": **resubmit unchanged** (our experience: refunded, often passes).
2. Still rejected: swap the likeliest sensitive word for a restrained version, log what changed, tell the owner first.
3. Reference images can trigger it too (wound or weapon prop images); swap them if needed.

## Quality pitfalls (team-tested)

| Pitfall | Cause / symptom | Fix |
|---|---|---|
| Face drift | A generated frame used as face reference | Original portraits only |
| People clipping into tables / chairs | Several people seated, torsos merging with table edges | "solid, physically correct contact"; check the first frame; fewer people |
| Wrong finger count | Complex hand action, close-ups | "natural hands with five fingers"; hands in medium shots, simple fists/wrist grips; count fingers at ~6 fps |
| Grid / blocky artifacts | Fine textures: gravel, grass, carpet | Name the fine textures actually in frame and ask for "sharp fine detail, no blocky or grid-like compression artifacts" (`universal-rules.md` §9); less fine texture in frame; slightly tighter framing; accept mild ones, otherwise re-render |
| Frozen background people | No background action written | Write small natural moves, "they stay in place" |
| Garbled signage | Model-invented text | "plain, blank, no lettering"; move the camera away |
| Props teleport / multiply | Especially in long clips | Restate position and "only this one" every beat |
| Chase actions skipped | Too much action in a long clip | Split into short beats, one action each |
| Running the wrong way | Vague direction | Lock direction and add a negation |
| Extra cuts | SHOT/CUT labels or overstuffed beats | Remove labels, trim content |
| Silent characters moving lips | Not told to keep quiet | `mouth stays closed, no lip movement`; QC the final frames |
| Built-in piano / score | Model habit | State "no music" twice + mute in post |
| Staring tail | Last beat too empty | Give the last beat only 1 s, trim in post |
| On-the-nose gestures | The prompt asked for ritual actions | Delete them, see `acting-and-pacing.md` |
| "Character never shows face" broken | Must be restated per beat | Rewrite "back to camera / face out of frame" in every beat |

## Discipline

- Click generate once per job; don't refresh the canvas or double-click (TapNow / Vigloo will charge twice).
- **Never cancel a paid job mid-render.**
- One job at a time; run the next only after the previous passes; no duplicate concurrent submissions.
- Before every submission, list "platform, settings, reference order, estimated cost" for the owner and wait for the OK.
