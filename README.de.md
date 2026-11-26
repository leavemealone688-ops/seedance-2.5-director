🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Seedance 2.5 Skill: Prompts · Storyboards · Drehbücher**

Ein **Skill-Paket für Videoproduktion mit Seedance 2.5** für KI-Coding-Assistenten und Agents: vom Einzeiler und drehbaren Drehbuch über die Auflösung in Einstellungen bis zu einfügefertigen Prompts, Render-QC und Postproduktion. Die Regeln stammen aus echten vertikalen Kurzserien- und Trailerproduktionen und sind mit den öffentlichen offiziellen Leitfäden abgeglichen.

- Zwei Leitfäden: **Plattformen in China** (Xiaoyunque, LibTV, Jimeng) und **internationale Plattformen** (Vigloo Studio, TapNow, Higgsfield)
- Durchgehende Konsistenz: Figuren, Kostümzustände, Raumaufteilung, Requisitenzustände, Licht und Farbe, Achse und Blickrichtung, Wetter, folgenübergreifend, Asset-Benennung
- Virale Struktur: 3-Sekunden-Hooks, Retention-Rhythmus, Wendungen und Auflösungen, Cliffhanger am Folgenende, Cover und Titel, Verbesserung mit eigenen Zahlen
- Vorlagen + Beispiele + Skripte (Kontaktbögen, Anschlussbilder, Zeichenzählung, Budget)
- In 14 Sprachen verfügbar

> Preise, Limits und Funktionen der Plattformen ändern sich jederzeit. Jede Zahl hat Quelle und Datum (Stand 2026-11): **vor der Nutzung auf der Plattform prüfen**. Nicht selbst Getestetes ist als „ungetestet“ markiert.

> Deutsche Fassung: README und SKILL.md auf Deutsch; `references/`, `templates/` und `examples/` vorerst auf Englisch.

## Was dieser Skill für Creator leistet

Die alltäglichen Probleme beim KI-Serienmachen mit Seedance 2.5 und was sich ändert, wenn Ihr Assistent diesem Skill folgt. Die Beispiele sind kurze Auszüge aus dem Prompt-Stil, den der Skill vermittelt.

### 1. Von der Idee in einem Satz zu generierbaren Prompts pro Einstellung

**Vorher**
```text
An old woman comforts a man whose dog is sick.
```
**Nachher**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. Gesichter, Kostüme, Sets und Requisiten bleiben über Einstellungen und Folgen gleich

**Vorher**
```text
Same woman as before, same clothes.
```
**Nachher**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. Jede Einstellung schließt sauber an die vorige an

**Vorher**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**Nachher**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. In 3 Sekunden packen, dranbleiben lassen, jede Folge mit einem Cliffhanger beenden

**Vorher**
```text
0-3s: slow aerial shot of the city at dusk.
```
**Nachher**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. Dialog, Lippensynchronität und Stimme bleiben bei der richtigen Figur

**Vorher**
```text
Lines listed at the end. "Her lips part."
```
**Nachher**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. Weniger abgelehnte oder verschwendete Renders, Budget vor dem Ausgeben von Credits

**Vorher**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**Nachher**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. Für die Plattform schreiben, die Sie wirklich nutzen (China vs. international)

**Vorher**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**Nachher**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. QC-Checklisten und ffmpeg-Skripte statt Augenmaß

**Vorher**
```text
Watch it once, notice six fingers after posting.
```
**Nachher**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### Für wen

- Kurzserien-Creator mit vertikalen Serien für Douyin, Shorts, Reels oder Drama-Apps
- KI-Filmemacher für Kurzfilme, Trailer und Plansequenzen
- Marken- und Werbeteams, die wiederkehrende Figuren und spezifikationsgerechte Spots brauchen
- Wettbewerbsteilnehmende, die Länge, Seitenverhältnis und Kennzeichnungsregeln einhalten müssen

Hier gibt es keine erfundenen Erfolgsquoten: Der Skill verlangt vom Assistenten, nur echte Zahlen und echte Preise zu verwenden.

## Sprachen

Jede Sprache ist ein eigener, gültiger Skill-Ordner mit eindeutigem `name`. Mit `--lang` installieren Sie nur die benötigte.

| Sprache | Ordner | `--lang` | Übersetzt |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | Alles (SKILL.md, references, templates, Beispielnotizen) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | Alles (SKILL.md, references, templates, Beispielnotizen) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | Alles (SKILL.md, references, templates, Beispielnotizen) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | Alles (SKILL.md, references, templates, Beispielnotizen) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md in dieser Sprache; references / templates / examples vorerst auf Englisch |

## Aufbau

```
seedance-2.5-director/
├── README.md / README.<lang>.md   diese Datei + Übersetzungen
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               Verweis für Tools, die AGENTS.md lesen
├── GEMINI.md               Kontext der Gemini-CLI-Erweiterung
├── gemini-extension.json   Manifest der Gemini-CLI-Erweiterung
├── install.sh              Installation in jedes Tool / Zips erstellen
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         vereinfachtes Chinesisch, Referenzfassung
    │   ├── SKILL.md              Einstieg: Ablauf + 11 eiserne Regeln
    │   ├── references/           Regelwerke (Plattformen, Schreiben, Konsistenz, Hooks, QC, Post…)
    │   ├── templates/            Vorlagen für Prompt / Storyboard / Drehbuch / Assets / QC
    │   ├── examples/             Beispielprompts aus echten Renders
    │   └── scripts/              ffmpeg-Frames, Zeichenzählung, Budget
    └── seedance25-director-<lang>/  derselbe Skill in einer anderen Sprache
```

## Installation

Benötigt `bash`; die Skripte brauchen zusätzlich `ffmpeg`/`ffprobe` und `python3`.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # alle Tools, alle Sprachen
./install.sh claude --lang de          # ein Tool, eine Sprache
./install.sh codex --lang en,de         # mehrere Sprachen
./install.sh cursor --project /path/to/repo --lang de   # in ein Projekt
./install.sh all --dry-run             # nur anzeigen, wohin
./install.sh workbuddy-zip --lang de   # Zip für den WorkBuddy-Upload
```

Ein vorhandener Ordner gleichen Namens wird als Backup umbenannt. Skills werden kopiert, nicht verlinkt (manche Tools überspringen Symlinks). Tipp: pro Tool nur eine Sprache; mit allen 14 sieht der Assistent 14 fast gleiche Skills.

### Hinweise je Tool

| Tool | Benutzerordner | Projektordner | Status |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ mit offizieller Doku geprüft (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (ältere Versionen lesen `~/.codex/skills/`) | `.agents/skills/` | ✅ mit offizieller Doku geprüft |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ mit offizieller Doku geprüft (geminicli.com); `/skills list`, `/skills reload` |
| Gemini-CLI-Erweiterung | das ganze Repo (mit `gemini-extension.json`, Skills unter `skills/`) | — | ✅ mit offizieller Doku geprüft |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ mit offizieller Doku geprüft (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ mit offizieller Doku geprüft (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | Client: Skills → Skill hinzufügen → Lokales Paket hochladen | — | ⚠️ ungetestet: Die offizielle Seite erwähnt den Import lokaler Pakete, nennt aber kein Format; `./install.sh workbuddy-zip` zippt den SKILL.md-Ordner, Import ungetestet |

Nach der Installation: In **Claude Code** `/seedance25-director-de` eingeben (oder einfach die Aufgabe beschreiben); in **Codex** `$seedance25-director-de` oder `/skills`; in **Gemini CLI** mit `/skills list` prüfen; in **Cursor** im Agent-Chat `/` tippen und `seedance25` suchen; in **CodeBuddy** `/skills` öffnen.

### Nur die Regeln lesen

Bei `skills/seedance25-director-de/SKILL.md` beginnen und der Ablauftabelle zu den benötigten Dateien folgen.

## Schnellstart

1. Dem Assistenten Plattform (z. B. Xiaoyunque 9:16 10s), Geschichte und Figurenporträts nennen.
2. Nach `SKILL.md` liefert er: Beat-Tabelle → Upload-Reihenfolge der Referenzen → Prompt-Text (mit Zeichenzahl) → Budget.
3. Sie bestätigen und reichen selbst auf der Plattform ein (der Skill reicht nie bezahlte Jobs für Sie ein).
4. Nach dem Render `scripts/contact_sheet.sh` für die QC laufen lassen, dann mit `scripts/cut_frame.sh` das Anschlussbild für die nächste Einstellung ziehen.

## Grundsätze

1. Jeder Render kostet Geld: zuerst Einstellungen und Budget nennen, erst nach Bestätigung einreichen.
2. Gesichter nur aus den Originalporträts; das Anschlussbild steuert nur Kamera, Positionen und Farbe.
3. Jede Einstellung schließt an Ausschnitt und Positionen der vorigen an.
4. Natürliches Spiel, straffes Tempo, keine plakativen Symbolgesten.
5. Scharfe Details für die Texturen verlangen, die wirklich im Bild sind, ohne block- oder gitterartige Kompressionsartefakte.
6. Modellmusik in der Post stummschalten, tote Enden kürzen, eingebrannte Untertitel ohne Satzzeichen, Cover in 9:16.
7. Nie Zahlen erfinden; unbekannt heißt „ungetestet“. Keine Konten, Passwörter, E-Mails oder Schlüssel im Repo.

## Mitwirken

- Neue Testergebnisse: Plattform, Datum und Einstellungen angeben; die passende `references/*.md` und die Preistabelle in `scripts/cost_calc.py` aktualisieren.
- Zuerst die Referenzfassung `skills/seedance25-director/` ändern, dann die Sprachordner. `AGENTS.md` und `GEMINI.md` sind nur Verweise.

## Lizenz

Lizenziert unter [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (Namensnennung – Nicht kommerziell): frei nutzen, bearbeiten und teilen mit Namensnennung; keine kommerzielle Nutzung.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
