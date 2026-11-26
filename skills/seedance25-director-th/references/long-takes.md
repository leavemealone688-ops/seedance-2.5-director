# Long Clips: 15-30 s Multi-beat and One-take

## Known facts

- Seedance 2.5 generates 4-30 s per run (ByteDance Seed launch, 2026-07-31; Higgsfield's official page also says 4-30 s) [Official].
- Front ends expose different durations: Vigloo slider 4-20 s [Team-tested]; we've only run 10 s on Xiaoyunque; LibTV has a recorded 30 s charge; TapNow ran a 28 s long take [Team-tested]. Other durations untested.

## When to use long clips

- One continuous time-and-space scene: merging adjacent beats reduces seams and face drift.
- One-take emotional or blocking passages.
- Contest entries / trailers that need a long-take feel.

Not for: crowds, complex action, chases and fights, many prop hand-offs — the longer it runs, the more props teleport, actions vanish and lines get swapped.

## How to write

1. First sentence sets the form: "20 seconds, one continuous take" or "20 seconds, 4 shots, hard cuts".
2. **4-6 beats for 12-20 s; 6-8 beats for 20-30 s**, 2-5 s each, one thing per beat.
3. Each beat: framing & camera + action + verbatim line + sound + end state.
4. Put everything constant at the top (location, light, cast, head count, persistent bans); don't change it inside beats.
5. State the axis: "all shots from the characters' left side".
6. Restate prop, door and device states every 2-3 beats.
7. One main move for a one-take, written as a physical process; one move per shot for multi-shot.
8. End with "the frame holds still" or an explicit end state in the last half second to leave an edit point.

## Prompt length

- Long clips tempt long prompts. Xiaoyunque's hard limit is 5000 characters; overseas team rule is pure ASCII ≤ 2000.
- Leave to the references whatever they can carry; write constants once; beats contain only changes.

## Test before batching

- Run the same scene as 10 s × 2 shots, 15 s × 3 shots and 20-30 s × 5 shots, one each (quote the budget and get the OK first).
- Log: do cuts land on the stated seconds, face drift, line completeness, lip sync, swapped lines, prop teleporting.
- If unstable, fall back to 10 s clips joined shot by shot (`continuity.md`) — more controllable.

## Extend instead of overlong

For continuous action beyond 30 s: get one clip approved, then continue it with the platform's Extend — steadier than cramming one prompt (`continuity.md`).

Skeleton example: `../examples/longtake-30s-skeleton.md`.
