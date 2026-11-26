# Render QC Checklist

## Do these two first

```bash
scripts/contact_sheet.sh S03_v1.mp4 S03_v1_contact.png 2 5   # 2 frames/s contact sheet
scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6     # ~6 frames/s, for fingers and clipping
```
Then **listen to the whole clip** (dialogue, lip sync, any music).

## Checklist

**Characters**
- [ ] Face matches the portrait (check each character, especially the second they enter)
- [ ] Hair silhouette, color, wardrobe, accessories, hard marks match; no forbidden accessories
- [ ] Wardrobe state right (barefoot / soaked / coat off)
- [ ] Head count right; no extra passers-by

**Bodies**
- [ ] Five fingers, no fusing
- [ ] No clipping into tables / chairs / cars / animals; accessories (suspenders, chains) not stuck to objects
- [ ] Direction of movement right

**Space and continuity**
- [ ] Opening matches the previous continuity frame: camera side, framing, blocking, color
- [ ] Left/right not swapped, screen direction kept
- [ ] Prop position, count, state right
- [ ] No new doors, lights, devices; text not garbled (or acceptable)
- [ ] Background people moving

**Sound**
- [ ] Lines complete, verbatim, right speaker
- [ ] Lip sync holds; silent characters' lips don't move (check final frames)
- [ ] No odd noises (panting, screams)
- [ ] Any model-added music? (yes → mute in post)

**Pacing and acting**
- [ ] No on-the-nose gestures, no staring into the lens
- [ ] How long is the staring tail → note the edit out-point
- [ ] Does the camera park on a meaningless composition (e.g. a long hold on someone's legs)?

**Technical**
- [ ] Duration, aspect, resolution right (`ffprobe`)
- [ ] Any hard cut where there shouldn't be one
- [ ] Fine textures (rock, water, leaves, fabric, hair…) are sharp, no blocky / grid-like compression artifacts

## Verdict format

`Keep / Keep with trim (out-point x.x s, mute music) / Re-render (reason + which line to change)`, logged in the storyboard's shot log. Template: `../templates/qc-report.md`.
