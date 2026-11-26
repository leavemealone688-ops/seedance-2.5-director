---
name: seedance25-director-ja
description: （日本語）Seedance 2.5 の動画プロンプト、絵コンテ、撮影用台本を書く。Seedance 2.5 の単発プロンプト（4〜30秒）の作成・修正、台本を秒単位のビートでカットに割る、人物・場面・小道具・照明の一貫性、カットつなぎ、縦型ショートドラマのフック、セリフとリップシンク、審査落ちの回避、生成後の QC と仕上げに使う。中国の平台（小雲雀 Xiaoyunque、LibTV、即夢 Jimeng）と海外の平台（Vigloo Studio、TapNow、Higgsfield）に対応。
---

# Seedance 2.5 プロンプト・絵コンテ・台本

実際のショートドラマと予告編の制作から抽出した、台本から投入可能なプロンプトまでの一連の手順です。優先順位：**プラットフォームの制限 > このパックのルール > 個人の好み**。

> このフォルダの `references/`、`templates/`、`examples/` は英語版です（日本語訳は未完成）。ルールの要点はこの SKILL.md にすべて日本語で書いてあります。

## 0. 最初に決める3つのこと

1. **どのプラットフォームか**：中国（小雲雀 小云雀 / LibTV / 即夢 即梦）→ `references/domestic.md`、海外キャンバス（Vigloo Studio / TapNow / Higgsfield）→ `references/overseas.md`。参照の書き方、実写の顔の扱い、課金がそれぞれ違うので混ぜないこと。
2. **納品形式**：縦 9:16 のショートドラマか、16:9 の短編・予告編か。`references/formats-and-budget.md`。
3. **何を頼まれているか**：台本 → 絵コンテ → プロンプト、プロンプト1本の修正、生成済み動画の QC のどれか。下の該当ステップへ。

## 1. 作業の流れ

| ステップ | やること | 読むもの |
|---|---|---|
| 1 ログライン・台本 | 一行の企画、3秒フック、撮影できる回の台本 | `references/viral-hooks.md`、`references/script-and-storyboard.md`、`templates/episode-script.md` |
| 2 アセット | 人物の基準画像、場面の正面・反対側プレート、小道具の状態を固定し、アセットバイブルを作る | `references/character-lock.md`、`references/consistency.md`、`templates/asset-bible.md` |
| 3 絵コンテ | 4〜30秒の生成単位に分け、それぞれ秒単位のビートを付ける | `templates/script-to-shots.md`、`templates/storyboard-table.md`、`references/long-takes.md`、`references/action-and-fights.md` |
| 4 プロンプト | プラットフォーム別テンプレートを使い、文字数を数える | `references/universal-rules.md`、`templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`、`examples/` |
| 5 芝居とテンポ | わざとらしい象徴的な仕草を消し、テンポを詰める | `references/acting-and-pacing.md` |
| 6 音 | ネイティブ音声のセリフ、多言語のセリフ、声の固定、BGM なし | `references/dialogue-audio.md` |
| 7 投入前 | 審査リスク、参照の順番、画面比、予算（ユーザーの OK を待つ） | `references/moderation-and-pitfalls.md`、`references/formats-and-budget.md`、`scripts/cost_calc.py` |
| 8 生成 QC | コンタクトシートで顔、手、めり込み、文字、終わりの間延びを確認 | `references/qc-checklist.md`、`scripts/contact_sheet.sh`、`templates/qc-report.md` |
| 9 次のカット | 編集のアウト点でつなぎフレームを切り出す | `references/continuity.md`、`scripts/cut_frame.sh` |
| 10 仕上げと公開準備 | 尻を切る、モデルが入れた音楽を消す、句読点なし字幕、9:16 サムネイル、AI 生成表示 | `references/post-production.md`、`references/domestic.md`（AI 表示） |

プラットフォームの選び方：`references/platform-comparison.md`。出典：`references/sources.md`。

## 2. 鉄則11か条（すべてのプロンプトが満たすこと）

1. **秒単位のビート**：整数秒、隙間なく連続（`0-2s / 2-7s / 7-10s`）。1ビートに主な出来事は1つ。
2. **今の画面だけを書く**：モデルは以前のバージョンを見ていない。still、as before、again、「修正後の」「前回と同じ」は書かない。続いている状態は現在形で書く（「Cole はテールゲートに座っている」）。
3. **顔は固定した元の基準画像からだけ**：生成された動画のフレームを顔の参照にしない。つなぎフレームが決めるのはカメラの位置、サイズ、立ち位置、光だけ。
4. **参照ごとに用途と、決めさせないことを書く**：`Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`。
5. **禁止事項はまとめて短く、FORBIDDEN / 「no …」で書く**。「avoid」は使わない。目に見えるものは、できるだけ肯定の状態で書く（「ドア枠と4人全員が最後まで画面内にいる」）。
6. **セリフはそれが出る秒の中に**、一字一句そのまま、話者と声の描写つきで。「X だけが話す」と書き、話さない人物には `mouth stays closed, no lip movement`。
7. **すべての動作に理由を**：わざとらしい象徴的な仕草（お金をポケットに入れる、ベンチを指さす、レンズを見つめる）はなし。テンポよく、最後に長く見つめ合わない。
8. **新しいカットは前のカットのサイズと立ち位置からつなぐ**：同じカメラ側、同じ位置。台本がはっきり場面を変える場合は除く。
9. **字幕なし、透かしなし、BGM なし**——冒頭と最後に1回ずつ書く。画面に不要な文字は「no lettering, no logos」。
10. **数字をでっち上げない**：価格、上限、クレジットには出典と日付を。分からなければ「未検証」と書く。
11. **画質の言葉は場面に合わせる**：このカットに実際にある細かい質感だけを挙げ（屋外なら岩、水、葉、遠くの山。室内なら布、木目、肌、髪）、「sharp fine detail, no blocky or grid-like compression artifacts」（細部はくっきり、ブロック状・格子状の圧縮ノイズなし）を求める。万能の画質ワードは使わず、画面にないものは並べない。

## 3. 出力形式

- 各プロンプトの前に **ビート要約表**（プラットフォームには貼らない）：秒 / サイズとカメラ / 動作 / セリフ / 音。
- プロンプト本文は独立したコードブロックに入れ、文字数（`wc -m`）とプラットフォームの上限を添える。
- 参照のアップロード順を並べる：`Image 1 = 人物 A の基準画像` …
- 費用の見積もり方法を書く（プラットフォームの表示が正）。ユーザーの確認なしに有料ジョブを投入しない。

## 4. しないこと

- ユーザーの代わりに生成ボタンを押す、クレジットを買う、投入済みの有料ジョブを取り消す。
- 実在の人物名、ブランド、アカウントをプロンプトに入れる。
- プラットフォームが公表していない機能を約束する。
