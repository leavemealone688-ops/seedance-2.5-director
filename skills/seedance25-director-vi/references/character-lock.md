# Character Lock (stop face drift)

## Core rules

1. **Lock the reference portrait before any video.** For every character, generate one fixed look with an image model (front-facing medium shot, clean background, even light). No portrait, no video generation.
2. **Faces come only from the original portrait.** Never use frames from generated video, last episode's footage or a poster as a face reference. Frames already carry slight drift; using them makes each episode drift further (we learned this the hard way).
3. **The continuity frame controls space only.** It locks camera side, framing, blocking and light. Write "do not copy any faces from Image 4", and when a character enters frame, "that face must match Image 2 exactly, not Image 4".
4. **Upload order = order of first appearance**; numbering is fixed for the whole film.

## Portrait spec (suggested)

| Item | Suggestion |
|---|---|
| Framing | Front or 3/4 medium, head to waist; add a full-body shot when proportions matter |
| Background | Plain or blurred, no text or logos |
| One image | One person, one face; crop expression grids apart |
| Multi-view | Add side and back views if the character turns a lot (official notes say 2.5 supports multi-view images, see `sources.md`) |
| Aspect | Match the delivery aspect (9:16 portraits for vertical dramas reduce crop distortion) |

## Hard marks (repeat in every prompt)

What drifts most: hair silhouette, hair color, glasses, jewelry, garment color and layering, signature scars/moles, suspenders and other accessories.

Pattern: `Image 1 is the elderly woman Edna: same face, same short wavy silver-white hair, same small gold stud earrings, same teal-green linen jacket over a cream button blouse, same long navy skirt.`

- **Also list forbidden accessories**: `no rings, no necklace, no glasses`.
- For accessories that fuse with objects (suspenders, chains, bag straps): "suspenders stay clearly on his shoulders, separate from the truck, the blanket and the dog".
- Wardrobe state changes (barefoot, rolled sleeves, soaked) go in the opening state of the current shot: "she is already barefoot".

## Multiple characters

- One fixed label + one reference + one set of hard marks per person, **same label throughout**.
- In every speaking beat: "only X speaks, Y's mouth stays closed".
- Lock the head count: "Only these two people and this one dog appear."
- 3+ characters in frame: prefer splitting shots; if they must share the frame, spell out left-to-right positions and favor tighter singles.
- Official notes say 2.5 handles multiple subjects, but we've seen more swapped looks and stolen lines as numbers grow → no more than 2 speakers per clip is safest.

## By platform

| Platform | How to attach characters |
|---|---|
| Xiaoyunque / LibTV / Jimeng / Higgsfield | Original portrait as a reference image |
| Vigloo Studio | Photoreal faces are rejected → Character nodes only; prompt uses `@Name`, no appearance text |
| TapNow | `{{Image N}}` chips with portraits; first frame passes moderation empty, then add people |

## First frames

- When the opening composition must be exact, generate a first frame with an image model: **empty plate first to pass moderation, then add people**.
- Check the first frame yourself: people sunk into tables, finger counts, prop orientation, garbled text.
- Faces in the first frame must also come from the portraits.

## If the face drifts

1. Did you use a generated frame as a face reference? Swap back to the original portrait.
2. Are the hard marks in every prompt, and do they conflict with the image?
3. Add "face matches Image N exactly" in the second the character enters.
4. Fewer people in frame, or bigger people (medium or tighter).
5. Still drifting: re-render — don't face-swap in post (it breaks lip sync).
