---
name: seedance25-director-de
description: (Deutsch) Videoprompts, Storyboards und drehfertige Drehbücher für Seedance 2.5. Zum Schreiben oder Reparieren eines Seedance-2.5-Prompts (4-30 s), zum Auflösen von Drehbüchern in Einstellungen mit Sekunden-Beats, für konsistente Figuren, Sets, Requisiten und Licht, saubere Anschlüsse, Hooks für vertikale Kurzserien, Dialog und Lippensynchronität, gegen Moderations-Ablehnungen, für Render-QC und Post. China (Xiaoyunque, LibTV, Jimeng) und international (Vigloo Studio, TapNow, Higgsfield).
---

# Seedance 2.5 Prompts · Storyboards · Drehbücher

Ein kompletter Ablauf vom Drehbuch bis zum einreichfertigen Prompt, gewonnen aus echten Kurzserien- und Trailerproduktionen. Rangfolge: **harte Plattformgrenzen > Regeln dieses Pakets > persönlicher Stil**.

> In diesem Ordner sind `references/`, `templates/` und `examples/` auf Englisch (deutsche Übersetzung steht noch aus). Alle wesentlichen Regeln stehen auf Deutsch in dieser SKILL.md.

## 0. Zuerst drei Dinge klären

1. **Welche Plattform**: China (Xiaoyunque 小云雀 / LibTV / Jimeng 即梦) → `references/domestic.md`; internationale Canvas-Plattformen (Vigloo Studio / TapNow / Higgsfield) → `references/overseas.md`. Referenzsyntax, Regeln zu echten Gesichtern und Abrechnung unterscheiden sich; nicht mischen.
2. **Lieferformat**: vertikale 9:16-Kurzserie oder 16:9-Kurzfilm / Trailer? `references/formats-and-budget.md`.
3. **Was ist gefragt**: Drehbuch → Storyboard → Prompts, einen Prompt reparieren oder QC eines fertigen Renders? Direkt zum passenden Schritt.

## 1. Ablauf

| Schritt | Was tun | Lesen |
|---|---|---|
| 1 Logline & Drehbuch | Einzeiler, 3-Sekunden-Hook, drehbares Episodendrehbuch | `references/viral-hooks.md`, `references/script-and-storyboard.md`, `templates/episode-script.md` |
| 2 Assets | Referenzporträts der Figuren, Haupt- und Gegenschuss-Plates der Sets, Requisitenzustände festlegen; Asset-Bibel anlegen | `references/character-lock.md`, `references/consistency.md`, `templates/asset-bible.md` |
| 3 Storyboard | In Generierungseinheiten von 4-30 s teilen, jede mit sekundengenauen Beats | `templates/script-to-shots.md`, `templates/storyboard-table.md`, `references/long-takes.md`, `references/action-and-fights.md` |
| 4 Prompt | Plattformvorlage nutzen; Zeichen zählen | `references/universal-rules.md`, `templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`, `examples/` |
| 5 Spiel & Tempo | Plakative Symbolgesten streichen, Tempo straffen | `references/acting-and-pacing.md` |
| 6 Ton | Nativer Dialog, mehrsprachige Zeilen, Stimme fixieren, keine Hintergrundmusik | `references/dialogue-audio.md` |
| 7 Vor dem Einreichen | Moderationsrisiken, Reihenfolge der Referenzen, Seitenverhältnis, Budget (auf das OK der Nutzerin / des Nutzers warten) | `references/moderation-and-pitfalls.md`, `references/formats-and-budget.md`, `scripts/cost_calc.py` |
| 8 Render-QC | Kontaktbögen: Gesichter, Hände, Durchdringungen, Schrift, tote Enden prüfen | `references/qc-checklist.md`, `scripts/contact_sheet.sh`, `templates/qc-report.md` |
| 9 Nächste Einstellung | Anschlussbild am Schnitt-Out-Punkt ziehen | `references/continuity.md`, `scripts/cut_frame.sh` |
| 10 Post & Veröffentlichung | Enden kürzen, vom Modell eingefügte Musik stummschalten, Untertitel ohne Satzzeichen, 9:16-Cover, KI-Kennzeichnung | `references/post-production.md`, `references/domestic.md` (KI-Kennzeichnung) |

Plattformwahl: `references/platform-comparison.md`. Quellen: `references/sources.md`.

## 2. Elf eiserne Regeln (jeder Prompt muss sie erfüllen)

1. **Sekundengenaue Beats**: ganze Sekunden, lückenlos aneinander (`0-2s / 2-7s / 7-10s`). Pro Beat passiert genau eine Hauptsache.
2. **Nur das aktuelle Bild beschreiben**: Das Modell hat frühere Versionen nie gesehen. Nie still, as before, again, „überarbeitet“, „wie beim letzten Mal“. Fortdauernde Zustände im Präsens („Cole sitzt auf der Ladeklappe“).
3. **Gesichter nur aus den fixierten Original-Referenzporträts**: niemals Frames aus generierten Videos als Gesichtsreferenz. Das Anschlussbild steuert nur Kameraseite, Bildausschnitt, Positionen und Licht.
4. **Für jede Referenz sagen, wofür sie dient und was sie nicht steuern darf**: `Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`.
5. **Verbote gebündelt, kurz, als FORBIDDEN / „no …“**, nie „avoid“. Alles Sichtbare, das sich als positiver Zustand formulieren lässt, wird so formuliert („Türrahmen und alle vier Personen bleiben im Bild“).
6. **Dialog steht in genau der Sekunde, in der er fällt**, wörtlich, mit Sprecher und Stimmbeschreibung; „nur X spricht“ schreiben, für stumme Figuren `mouth stays closed, no lip movement`.
7. **Jede Handlung braucht einen Grund**: keine plakativen Symbolgesten (Geld einstecken, auf die Bank zeigen, in die Linse starren), straffes Tempo, kein langes Starren am Ende.
8. **Jede neue Einstellung schließt an Ausschnitt und Positionen der vorigen an**: gleiche Kameraseite, gleiche Positionen, außer das Drehbuch wechselt klar die Szene.
9. **Keine Untertitel, kein Wasserzeichen, keine Hintergrundmusik**: einmal am Anfang und einmal am Ende sagen; jeder im Bild unnötige Text ist „no lettering, no logos“.
10. **Nie Zahlen erfinden**: Preise, Grenzen und Credits mit Quelle und Datum; wenn unbekannt, „ungetestet“ schreiben.
11. **Qualität passend zur Szene anfordern**: nur die feinen Texturen nennen, die wirklich in dieser Einstellung sind (außen: Felsen, Wasser, Blätter, ferne Berge; innen: Stoff, Holzmaserung, Haut, Haare) und „sharp fine detail, no blocky or grid-like compression artifacts“ verlangen (scharfe Feindetails, keine block- oder gitterartigen Kompressionsartefakte). Keine Einheits-Qualitätsfloskeln und nichts aufzählen, was nicht im Bild ist.

## 3. Ausgabeformat

- Vor jedem Prompt eine **Beat-Übersichtstabelle** (wird nicht in die Plattform kopiert): Sekunden / Ausschnitt & Kamera / Handlung / Dialog / Ton.
- Den Prompt-Text in einen eigenen Codeblock, mit Zeichenzahl (`wc -m`) und Plattformlimit.
- Upload-Reihenfolge der Referenzen auflisten: `Image 1 = Porträt Figur A` …
- Angeben, wie die Kosten geschätzt sind (maßgeblich ist die Anzeige der Plattform); nie einen kostenpflichtigen Job ohne Bestätigung einreichen.

## 4. Nicht tun

- Nicht für die Nutzerin / den Nutzer auf Generieren klicken, keine Credits kaufen, keinen bereits eingereichten bezahlten Job abbrechen.
- Keine Namen echter Personen, Marken oder Konten in Prompts.
- Keine Funktionen versprechen, die die Plattform nicht veröffentlicht hat.
