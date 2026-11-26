🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Skill Seedance 2.5 : prompts · storyboards · scénarios**

Un **pack de skills de production vidéo Seedance 2.5** pour assistants de code IA et agents : du pitch en une phrase et du scénario tournable, en passant par le découpage, jusqu'aux prompts prêts à coller, au contrôle qualité des rendus et à la post-production. Les règles viennent de vraies productions de micro-séries verticales et de bandes-annonces, recoupées avec les guides officiels publics.

- Deux méthodes : **plateformes chinoises** (Xiaoyunque, LibTV, Jimeng) et **plateformes internationales** (Vigloo Studio, TapNow, Higgsfield)
- Cohérence complète : personnages, état des costumes, topologie des décors, état des accessoires, lumière et couleur, axe et sens de l'écran, météo, continuité entre épisodes, nommage des assets
- Structure virale : accroche en 3 secondes, rythme de rétention, rebondissements et paiements, accroche de fin d'épisode, vignettes et titres, amélioration avec vos propres statistiques
- Modèles + exemples + scripts (planches contact, images de raccord, comptage de caractères, budget)
- Disponible en 14 langues

> Les prix, limites et fonctions des plateformes changent à tout moment. Chaque chiffre porte une source et une date (à 2026-11) : **vérifiez sur la plateforme avant usage**. Ce que nous n'avons pas testé est marqué « non testé ».

> Version française : README et SKILL.md en français ; `references/`, `templates/` et `examples/` pour l'instant en anglais.

## Ce que ce skill apporte aux créateurs

Les problèmes quotidiens quand on fait de la fiction IA avec Seedance 2.5, et ce qui change quand votre assistant suit ce skill. Les exemples sont de courts extraits du style de prompt qu'il enseigne.

### 1. D'une idée en une phrase à des prompts plan par plan prêts à générer

**Avant**
```text
An old woman comforts a man whose dog is sick.
```
**Après**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. Visages, costumes, décors et accessoires identiques d'un plan et d'un épisode à l'autre

**Avant**
```text
Same woman as before, same clothes.
```
**Après**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. Chaque plan raccorde proprement avec le précédent

**Avant**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**Après**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. Accrocher en 3 secondes, retenir, finir chaque épisode sur un cliffhanger

**Avant**
```text
0-3s: slow aerial shot of the city at dusk.
```
**Après**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. Dialogues, synchro labiale et voix qui restent sur le bon personnage

**Avant**
```text
Lines listed at the end. "Her lips part."
```
**Après**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. Moins de rendus refusés ou gâchés, et un budget avant de dépenser des crédits

**Avant**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**Après**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. Écrire pour la plateforme réellement utilisée (Chine ou international)

**Avant**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**Après**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. Checklists QC et scripts ffmpeg plutôt qu'un coup d'œil

**Avant**
```text
Watch it once, notice six fingers after posting.
```
**Après**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### Pour qui

- Créateurs de micro-séries verticales pour Douyin, Shorts, Reels ou applis de séries courtes
- Cinéastes IA qui font des courts, des bandes-annonces et des plans-séquences
- Équipes marque et pub qui ont besoin de personnages récurrents et de films conformes au cahier des charges
- Participants à des concours qui doivent respecter durée, format et règles de mention IA

Aucun taux de réussite inventé ici : le skill demande à l'assistant d'utiliser uniquement de vraies statistiques et de vrais prix.

## Langues

Chaque langue est un dossier de skill valide et autonome, avec un `name` unique. Installez seulement celle dont vous avez besoin avec `--lang`.

| Langue | Dossier | `--lang` | Traduit |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | Tout (SKILL.md, references, templates, notes des exemples) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | Tout (SKILL.md, references, templates, notes des exemples) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | Tout (SKILL.md, references, templates, notes des exemples) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | Tout (SKILL.md, references, templates, notes des exemples) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md dans cette langue ; references / templates / examples en anglais pour l'instant |

## Arborescence

```
seedance-2.5-director/
├── README.md / README.<lang>.md   ce fichier + traductions
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               pointeur pour les outils qui lisent AGENTS.md
├── GEMINI.md               contexte de l'extension Gemini CLI
├── gemini-extension.json   manifeste de l'extension Gemini CLI
├── install.sh              installe dans chaque outil / crée des zips
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         chinois simplifié, version de référence
    │   ├── SKILL.md              entrée : déroulé + 11 règles d'or
    │   ├── references/           règles (plateformes, écriture, cohérence, accroches, QC, post…)
    │   ├── templates/            modèles de prompt / storyboard / scénario / assets / QC
    │   ├── examples/             prompts d'exemple adaptés de vrais rendus
    │   └── scripts/              extraction ffmpeg, comptage de caractères, budget
    └── seedance25-director-<lang>/  le même skill dans une autre langue
```

## Installation

Il faut `bash` ; les scripts demandent aussi `ffmpeg`/`ffprobe` et `python3`.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # tous les outils, toutes les langues
./install.sh claude --lang fr          # un outil, une langue
./install.sh codex --lang en,fr         # plusieurs langues
./install.sh cursor --project /path/to/repo --lang fr   # dans un projet
./install.sh all --dry-run             # affiche seulement la destination
./install.sh workbuddy-zip --lang fr   # zip pour import dans WorkBuddy
```

Un dossier existant du même nom est renommé en sauvegarde. Les skills sont copiés, pas liés (certains outils ignorent les liens symboliques). Conseil : une seule langue par outil ; avec les 14, l'assistant voit 14 skills presque identiques.

### Notes par outil

| Outil | Dossier utilisateur | Dossier projet | État |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ vérifié dans la documentation officielle (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (les anciennes versions lisent `~/.codex/skills/`) | `.agents/skills/` | ✅ vérifié dans la documentation officielle |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ vérifié dans la documentation officielle (geminicli.com); `/skills list`, `/skills reload` |
| Extension Gemini CLI | le dépôt entier (avec `gemini-extension.json`, skills dans `skills/`) | — | ✅ vérifié dans la documentation officielle |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ vérifié dans la documentation officielle (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ vérifié dans la documentation officielle (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | client : Compétences → Ajouter → Importer un paquet local | — | ⚠️ non testé : la page officielle parle d'importer un paquet local sans en donner le format ; `./install.sh workbuddy-zip` zippe le dossier du SKILL.md, import non testé |

Après installation : dans **Claude Code** tapez `/seedance25-director-fr` (ou décrivez la tâche) ; dans **Codex** `$seedance25-director-fr` ou `/skills` ; dans **Gemini CLI** vérifiez avec `/skills list` ; dans **Cursor** tapez `/` dans le chat Agent et cherchez `seedance25` ; dans **CodeBuddy** ouvrez `/skills`.

### Lire seulement les règles

Commencez par `skills/seedance25-director-fr/SKILL.md` et suivez son tableau de déroulé jusqu'aux fichiers utiles.

## Démarrage rapide

1. Donnez à l'assistant la plateforme (ex. Xiaoyunque 9:16 10s), l'histoire et les portraits des personnages.
2. En suivant `SKILL.md`, il rend : tableau des beats → ordre d'import des références → corps du prompt (avec nombre de caractères) → budget.
3. Vous validez et envoyez vous-même sur la plateforme (le skill n'envoie jamais de travail payant à votre place).
4. Après le rendu, faites lancer `scripts/contact_sheet.sh` pour le QC, puis `scripts/cut_frame.sh` pour l'image de raccord du plan suivant.

## Principes

1. Chaque rendu coûte de l'argent : réglages et budget d'abord, envoi seulement après validation.
2. Les visages viennent uniquement des portraits d'origine ; l'image de raccord ne contrôle que caméra, placement et couleur.
3. Chaque plan part du cadrage et du placement du précédent.
4. Jeu naturel, rythme serré, pas de gestes symboliques appuyés.
5. Demander du détail net sur les textures réellement à l'image, sans artefacts de compression en blocs ou en grille.
6. Couper la musique du modèle en post, couper les fins mortes, sous-titres incrustés sans ponctuation, vignettes 9:16.
7. Ne jamais inventer de chiffres ; inconnu = « non testé ». Aucun compte, mot de passe, e-mail ni clé dans le dépôt.

## Contribuer

- Nouveaux résultats : indiquez plateforme, date et réglages ; mettez à jour le `references/*.md` concerné et la grille tarifaire de `scripts/cost_calc.py`.
- Modifiez d'abord la version de référence `skills/seedance25-director/`, puis les dossiers de langue. `AGENTS.md` et `GEMINI.md` ne sont que des pointeurs.

## Licence

Sous licence [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (Attribution - Pas d'utilisation commerciale) : libre d'utiliser, adapter et partager avec attribution ; usage commercial interdit.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
