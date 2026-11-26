🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Seedance 2.5 プロンプト・絵コンテ・台本 Skill**

AI コーディングアシスタントやエージェント向けの **Seedance 2.5 動画制作スキルパック**です。一行の企画と撮影できる台本、カット割りから、そのまま貼れるプロンプト、生成後の QC、仕上げまでを扱います。ルールは実際の縦型ショートドラマと予告編の制作から生まれ、公開されている公式ガイドと照らし合わせています。

- **中国の平台**（小雲雀 Xiaoyunque、LibTV、即夢 Jimeng）と**海外の平台**（Vigloo Studio、TapNow、Higgsfield）の2通りの書き方
- 全方位の一貫性：人物、衣装の状態、空間配置、小道具の状態、光と色、イマジナリーラインと画面の向き、天気、話数をまたぐ連続性、アセット命名
- バズる構成：3秒フック、視聴維持のリズム、どんでん返しと回収、各話ラストの引き、サムネイルとタイトル、自分のデータで改善
- テンプレート + 例 + スクリプト（コンタクトシート、つなぎフレーム、文字数、予算見積もり）
- 14言語に対応

> プラットフォームの価格、上限、機能はいつでも変わります。数字にはすべて出典と日付（2026-11 時点）を付けています。**使う前にプラットフォームで確認してください**。自分たちで試していないものは「未検証」と書いています。

> 日本語版：README と SKILL.md は日本語、`references/`・`templates/`・`examples/` は現時点で英語です。

## このスキルがクリエイターのためにできること

Seedance 2.5 で AI ドラマを作るときに毎日ぶつかる問題と、アシスタントがこのスキルに従ったときに変わることです。例はスキルが教えるプロンプトの書き方の短い抜粋です。

### 1. 一行のアイデア → そのまま生成できるカット別プロンプト

**改善前**
```text
An old woman comforts a man whose dog is sick.
```
**改善後**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. カットや話数が変わっても顔、衣装、場所、小道具がそのまま

**改善前**
```text
Same woman as before, same clothes.
```
**改善後**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. どのカットも前のカットから自然につながる

**改善前**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**改善後**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. 3秒でつかみ、最後まで見せ、毎話次が気になる終わり方に

**改善前**
```text
0-3s: slow aerial shot of the city at dusk.
```
**改善後**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. セリフ、リップシンク、声が別の人物に移らない

**改善前**
```text
Lines listed at the end. "Her lips part."
```
**改善後**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. 審査落ちや無駄な生成を減らし、クレジットを使う前に予算を出す

**改善前**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**改善後**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. 実際に使うプラットフォームに合わせて書く（中国 vs 海外）

**改善前**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**改善後**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. 目視の勘ではなく QC チェックリストと ffmpeg スクリプト

**改善前**
```text
Watch it once, notice six fingers after posting.
```
**改善後**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### こんな人に

- 抖音、Shorts、Reels、ショートドラマアプリ向けの縦型シリーズを作るクリエイター
- 短編、予告編、長回しを作る AI 映像作家
- 同じキャラクターを使い回し、仕様どおりに納品したいブランド・広告チーム
- 尺、画面比、AI 表示のルールを守る必要があるコンテスト応募者

でっち上げの成功率は載せていません。このスキルは実際のデータと実際の価格だけを使うようアシスタントに求めます。

## 言語版

言語ごとに独立した正式なスキルフォルダで、`name` は重複しません。`--lang` で必要な言語だけをインストールできます。

| 言語 | フォルダ | `--lang` | 翻訳範囲 |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | すべて（SKILL.md、references、templates、例の説明） |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | すべて（SKILL.md、references、templates、例の説明） |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | すべて（SKILL.md、references、templates、例の説明） |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | すべて（SKILL.md、references、templates、例の説明） |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md はその言語、references / templates / examples は当面英語 |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md はその言語、references / templates / examples は当面英語 |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md はその言語、references / templates / examples は当面英語 |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md はその言語、references / templates / examples は当面英語 |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md はその言語、references / templates / examples は当面英語 |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md はその言語、references / templates / examples は当面英語 |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md はその言語、references / templates / examples は当面英語 |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md はその言語、references / templates / examples は当面英語 |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md はその言語、references / templates / examples は当面英語 |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md はその言語、references / templates / examples は当面英語 |

## 構成

```
seedance-2.5-director/
├── README.md / README.<lang>.md   このファイル + 各言語版
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               AGENTS.md を読むツール向けの案内
├── GEMINI.md               Gemini CLI 拡張のコンテキスト
├── gemini-extension.json   Gemini CLI 拡張のマニフェスト
├── install.sh              各ツールへのインストール / zip 作成
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         簡体字中国語、基準版
    │   ├── SKILL.md              入口：作業の流れ + 鉄則11か条
    │   ├── references/           ルール集（プラットフォーム、書き方、一貫性、フック、QC、仕上げ…）
    │   ├── templates/            プロンプト / 絵コンテ / 台本 / アセット / QC のテンプレート
    │   ├── examples/             実際の生成から整えた例
    │   └── scripts/              ffmpeg のフレーム抽出、文字数、予算見積もり
    └── seedance25-director-<lang>/  同じスキルの他言語版
```

## インストール

`bash` が必要です。スクリプトには `ffmpeg`/`ffprobe` と `python3` も必要です。

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # 全ツール、全言語
./install.sh claude --lang ja          # ツール1つ、言語1つ
./install.sh codex --lang en,ja         # 複数の言語
./install.sh cursor --project /path/to/repo --lang ja   # 特定のプロジェクトに
./install.sh all --dry-run             # どこに入るかだけ表示
./install.sh workbuddy-zip --lang ja   # WorkBuddy アップロード用の zip
```

同名のフォルダがあれば、バックアップとして名前を変えて残します。シンボリックリンクではなくコピーで入れます（リンクを無視するツールがあるため）。ツールごとに1言語だけ入れるのがおすすめです。14言語すべて入れると、ほぼ同じスキルが14個見えることになります。

### ツール別メモ

| ツール | ユーザーフォルダ | プロジェクトフォルダ | 状態 |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ 公式ドキュメントで確認済み (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (旧版は `~/.codex/skills/`) | `.agents/skills/` | ✅ 公式ドキュメントで確認済み |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ 公式ドキュメントで確認済み (geminicli.com); `/skills list`, `/skills reload` |
| Gemini CLI 拡張 | リポジトリ全体（`gemini-extension.json` あり、スキルは `skills/` の下） | — | ✅ 公式ドキュメントで確認済み |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ 公式ドキュメントで確認済み (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ 公式ドキュメントで確認済み (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | クライアント：スキル → スキルを追加 → ローカルスキルパッケージをアップロード | — | ⚠️ 未検証：公式ページにローカルスキルパッケージの読み込みはあるが形式の記載なし。`./install.sh workbuddy-zip` は SKILL.md フォルダを zip にするだけで、読み込みは未テスト |

インストール後：**Claude Code** は `/seedance25-director-ja`（または作業内容をそのまま説明）、**Codex** は `$seedance25-director-ja` か `/skills`、**Gemini CLI** は `/skills list` で確認、**Cursor** は Agent チャットで `/` を入力して `seedance25` を検索、**CodeBuddy** は `/skills`。

### インストールせずにルールだけ読む

`skills/seedance25-director-ja/SKILL.md` から読み、作業の流れの表に沿って必要なファイルへ進んでください。

## クイックスタート

1. アシスタントにプラットフォーム（例：小雲雀 9:16 10s）、ストーリー、キャラクターの基準画像を伝える。
2. `SKILL.md` の流れで、ビート表 → 参照のアップロード順 → プロンプト本文（文字数つき）→ 予算 が返ってくる。
3. 確認してから自分でプラットフォームに投入する（このスキルは有料ジョブを代わりに投入しない）。
4. 生成後は `scripts/contact_sheet.sh` で QC、`scripts/cut_frame.sh` でつなぎフレームを切り出して次のカットへ。

## 原則

1. 生成のたびにお金がかかる。設定と予算を先に伝え、確認後に投入。
2. 顔は元の基準画像からだけ。つなぎフレームはカメラ、立ち位置、色だけを決める。
3. どのカットも前のカットのサイズと立ち位置からつなぐ。
4. 自然な芝居、詰まったテンポ、わざとらしい象徴的な仕草なし。
5. 画質はそのカットに実際にある質感を挙げてくっきりと、ブロック状・格子状の圧縮ノイズなしで。
6. モデルが入れた音楽は仕上げで消し、間延びした尻は切り、焼き込み字幕は句読点なし、サムネイルは 9:16。
7. 数字はでっち上げない。分からなければ「未検証」。リポジトリにアカウント、パスワード、メール、キーを置かない。

## 貢献

- 新しい検証結果はプラットフォーム、日付、設定を書き、該当する `references/*.md` と `scripts/cost_calc.py` の単価表を更新してください。
- まず基準版 `skills/seedance25-director/` を直し、各言語フォルダに反映します。`AGENTS.md` と `GEMINI.md` は案内だけです。

## ライセンス

[CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)（表示-非営利）。クレジットを表示すれば自由に使用・改変・共有できます。商用利用は禁止です。

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
