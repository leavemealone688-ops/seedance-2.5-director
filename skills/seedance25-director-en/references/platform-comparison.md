# Platform Comparison and Choice (as of 2026-11, verify)

| | Xiaoyunque | LibTV | Jimeng | Vigloo Studio | TapNow | Higgsfield |
|---|---|---|---|---|---|---|
| Region | China | China | China | Overseas | Overseas | Overseas |
| Form | Input box | Canvas + CLI | Web generator | Canvas | Canvas | Web + API |
| Durations we've run | 10 s | 9 s, 30 s | Untested | 4-20 s slider | 28 s | 5 s |
| Real-face references | Portraits OK | Portraits OK | Untested | Photoreal faces rejected; Character nodes required | Portraits OK | Portraits OK |
| Reference syntax | `@图片N` / `Image N` | Node references | `@图片N` (official manual) | `@Name` `@image1` `@audio1` | `{{Image N}}` `{{Video}}` | `Image N` |
| Audio references | Untested | Untested | Officially supported | mp3 `@audio1` | Supported | Officially 10 clips |
| Extend / edit | Untested | Untested | Officially supported | Extend / Edit | `{{Video}}` continuation | Extend / Edit |
| Prompt limit | 5000 chars | Untested | Untested | Untested | Accepted 14,676 (team rule ≤ 2000 ASCII) | Untested |
| Watch out | Resubmit rejections unchanged | CLI at full price | 4K launched | Don't refresh the canvas | Click Generate once | Check the button price |

## How to choose

- **Chinese vertical dramas for China**: Xiaoyunque (most familiar workflow); LibTV for canvas-style batching.
- **English / Korean vertical dramas for overseas**: Vigloo Studio (stable Character nodes, but no photoreal face uploads).
- **Trailers, long takes, 16:9**: TapNow or Higgsfield (30 s, 50 references).
- Once chosen, keep one drama on one platform: reference syntax, moderation and voices differ; switching means recalibrating from scratch.
