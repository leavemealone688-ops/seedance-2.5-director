# Script → Storyboard → Generation Units

## 1. Script layer (a shootable script)

Each scene:
- Scene number, location, time (light), characters present
- **What the scene does** (what it advances, what it pays off)
- Action (only what the camera can see)
- Dialogue (verbatim, with speaker and voice)

Rules:
- Only what can be seen or heard — no inner thoughts; express them as action or dialogue.
- Each scene advances one thing.
- Hook up front, question at the end (`viral-hooks.md`).
- Every prop and action has a reason and gets used later.
- Template: `../templates/episode-script.md`.

## 2. Storyboard layer

Break the script into shots: framing, camera (which side of the axis), one move, action, dialogue, sound, which frame it opens from, end state.

- Template: `../templates/storyboard-table.md`.
- Each shot's opening must match the previous shot's end (`continuity.md`).
- Mark the payoff second for each shot.

## 3. Generation-unit layer

One prompt = one generation unit:
- 10 s unit: 1 shot, or 2 shots (3-4 s + 6-7 s).
- 9-15 s: 2-4 shots.
- 15-30 s: a long clip, see `long-takes.md`.

Merging rule: same continuous time and space, same group of people, simple action → merge into one; crowds, complex action, scene changes → split.

Template: `../templates/script-to-shots.md`.

## 4. Before delivering each prompt

- [ ] Beat table (seconds / framing / action / dialogue / sound)
- [ ] Reference upload order
- [ ] Character count ≤ platform limit (`scripts/count_chars.sh`)
- [ ] No still / as before / references to old versions
- [ ] No on-the-nose symbolic gestures
- [ ] "No music / no subtitles" written twice
- [ ] Budget calculated, waiting for the OK

## 5. Complex blocking

Scenes with many people, complex movement or precise camera: block them with a gray-box / 3D previs, attach it as a camera reference, then write the prompt.
