# Aspect Ratio, Resolution, Contest Specs and Budget

## 9:16 vs 16:9

| | 9:16 vertical | 16:9 horizontal |
|---|---|---|
| Use | Vertical dramas, Douyin, Shorts, Reels | Contests, trailers, long-form platforms |
| Composition | People fill more of the frame; mostly medium-close singles; two-shots staggered vertically or foreground/background | Lateral blocking; symmetrical two-shots, over-the-shoulder; wide establishing shots |
| Writing | `Vertical 9:16` in the first sentence; subject centered, clear of top/bottom UI | `16:9 cinematic widescreen`; can ask for a 2.35:1 scope look |
| Risk | Lateral action leaves frame; crowding | Gets cropped on vertical platforms |

- Portraits and continuity frames should match the delivery aspect where possible.
- **Don't convert by cropping**: if you need both, generate both; or keep a safe area (subject centered with margins) and crop.
- Contest specs (duration, resolution, frame rate, subtitle rules, whether AI labeling is allowed): read the rules first and put them on line one of the project plan; this pack doesn't rule on any contest.

## Resolution

- We usually deliver at 720P / 720p; test composition and acting at low resolution first (480p draft) and go high-res once happy — saves budget.
- 1080p / 4K: Jimeng and Higgsfield have publicly launched 4K tiers [Official, 2026-11]; prices untested by us.
- Frame rate: we've written 24fps in Vigloo prompts; actual output frame rate is up to the platform — check with `ffprobe`.

## Budget

Do the math before submitting, and get the owner's OK:

```bash
python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
python3 scripts/cost_calc.py --platform vigloo --seconds 20 --clips 4 --retry 0.5
```

- The rate table sits at the top of `scripts/cost_calc.py`, each with a source and date; the script refuses untested combinations.
- Dialogue shots typically need 1-2 versions → 50% retry margin by default.
- Estimate ≠ charge; the checkout screen / Generate button wins; log actual charges after submitting.
- Saving money: experiment at draft tier; one job at a time; don't re-render what an edit can fix; CLI submissions may skip web discounts (LibTV, tested).

| Platform | Reference price (as of 2026-11, verify) | Source |
|---|---|---|
| Xiaoyunque | 200 credits / 10 s clip (9:16, 720P, reference mode) | Team-tested |
| LibTV | 9 s = 348 credits (with 84% discount, web); CLI at full price | Team-tested |
| Vigloo Studio | ~29 credits/s (12 s = 350, 20 s = 580); Extend ~300, Edit ~420 | Team-tested |
| TapNow | 480p 28 s ≈ 560 Tapies | Team-tested |
| Higgsfield | 720p 5 s = 35 credits | Team-tested |
| Jimeng | Untested | — |

Credit-to-currency rates depend on the membership tier; this pack doesn't convert them.
