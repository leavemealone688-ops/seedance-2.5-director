# Continuity Cuts (every shot cuts from the last)

## Principles

- **Each new shot cuts from the previous shot's framing and blocking**: same camera side, similar framing, people in the same positions, then the new shot moves forward. Unless the script clearly changes scene or jumps in time.
- The continuity frame is **the last frame that actually survives the edit**, not the raw clip's last frame (raw tails usually get cut).
- The continuity frame controls space and color, **not faces** (`character-lock.md`).
- A character from the previous shot must not shrink into a tiny figure in the new one (we hit this: medium shot before, then he sat far in the background — it didn't cut, re-rendered).

## How

1. Decide the previous shot's out-point (e.g. 6.0 s; the staring after it gets cut).
2. Grab the continuity frame:
   ```bash
   scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
   # or the raw last frame: scripts/last_frame.sh S02_v2.mp4 S02_v2_last.png
   ```
3. Upload it as the **last reference image**.
4. Prompt pattern:
   ```
   Image 4 is only a continuity frame from the end of the previous shot: use it for the same camera side,
   the same medium framing and distance, the same warm golden light, the same positions of the man, the woman
   and the dog; do not copy any signs, logos, lettering or faces from Image 4.
   The shot MUST open in the same framing and space as Image 4.
   0-2s: open on the same framing as Image 4 — <list each person's position and pose right now>.
   ```
5. Finish the "move off the continuity frame" action within the first 1-2 s; don't change framing straight away.

## Extend vs. a new clip

| Method | Good for | Watch out |
|---|---|---|
| Platform Extend / continue (`在 @视频1 的基础上续写 N 秒` / "extend @Video 1 by N seconds") | Action that must flow seamlessly | Official and our tests: the seam barely jumps; output often includes the original clip; billing per platform |
| New clip + continuity frame reference | Cuttable joins, framing changes | Opening similarity isn't guaranteed — lock the opening blocking in text |
| First-frame slot (first_frame) | Frame one must match exactly | Locks the whole frame, including the face state at that moment |
| TapNow `{{Video}}` | Continuing an approved clip | Attach the approved version, never a reject |

## Scene changes / time jumps

- Write "this is a hard time cut, no push through the doorway", taking only color or weather from the continuity frame.
- The first shot of a new scene is an establishing shot (wide, clear spatial anchors), then the characters.

## Continuity check

- Put the previous out-point frame next to the new frame 0: camera side, left/right, color, prop positions, wardrobe state.
- If they don't match, re-render the new shot — don't hide it with a transition.
