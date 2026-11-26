#!/usr/bin/env python3
"""Seedance 2.5 积分预算估算。
只收录有出处的费率（团队实扣或官方页面），每条带来源和日期；其余组合直接报“未实测”。
估算 ≠ 实扣：提交前以平台确认页 / Generate 按钮显示为准。平台改价时只改 RATES。
"""
import argparse, math, sys

RATES = {
    # (platform, resolution): rate
    ("xiaoyunque", "720p"): {"per_clip": 200, "clip_seconds": 10,
        "src": "小云雀 参考生成 9:16/10s/720P 团队实扣，截至 2026-11"},
    ("libtv", "720p"): {"per_sec": 38.7,
        "src": "LibTV 网页端 Seedance 2.5 全能参考，团队实扣（9s=348，已含当时 84% 折扣），截至 2026-11；CLI 提交按原价"},
    ("vigloo", "720p"): {"per_sec": 29,
        "src": "Vigloo Studio Seedance 2.5 带音频 团队实扣（12s=350，20s=580），截至 2026-11"},
    ("tapnow", "480p"): {"per_sec": 20,
        "src": "TapNow Seedance 2.5 Omni Reference 团队记录（28s≈560 Tapies），截至 2026-11"},
    ("higgsfield", "720p"): {"per_sec": 7,
        "src": "Higgsfield Seedance 2.5 720p 团队实扣（5s=35 credits），截至 2026-11"},
}

def main():
    p = argparse.ArgumentParser(description="Seedance 2.5 预算估算（未实测组合拒绝计算）")
    p.add_argument("--platform", required=True,
                   choices=sorted({k[0] for k in RATES} | {"jimeng"}))
    p.add_argument("--resolution", default="720p")
    p.add_argument("--seconds", type=int, default=10, help="每条时长（秒）")
    p.add_argument("--clips", type=int, required=True, help="条数")
    p.add_argument("--retry", type=float, default=0.5, help="重跑余量比例，默认 0.5")
    a = p.parse_args()
    r = RATES.get((a.platform, a.resolution))
    if not r:
        sys.exit(f"未实测：{a.platform} {a.resolution} 没有可靠费率，请看平台确认页。")
    if "per_clip" in r:
        if a.seconds != r["clip_seconds"]:
            sys.exit(f"未实测：{a.platform} 只核实过 {r['clip_seconds']} 秒/条的价格。")
        per = r["per_clip"]
    else:
        per = r["per_sec"] * a.seconds
    base = per * a.clips
    total = math.ceil(base * (1 + a.retry))
    print(f"{a.platform} {a.resolution} · {a.seconds}s/条 · {a.clips} 条")
    print(f"单条约 {per:g}；不含重跑 {base:g}；含 {int(a.retry*100)}% 重跑余量约 {total}")
    print(f"来源：{r['src']}（以确认页为准）")

if __name__ == "__main__":
    main()
