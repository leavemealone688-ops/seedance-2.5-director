---
name: seedance25-director-fr
description: (Français) Prompts vidéo, storyboards et scénarios tournables pour Seedance 2.5. Pour écrire ou corriger un prompt Seedance 2.5 (4-30 s), découper un scénario en plans avec des beats à la seconde, cohérence des personnages, décors, accessoires et lumière, raccords entre plans, accroches de micro-séries verticales, dialogues et synchro labiale, éviter les refus, QC, post-production. Plateformes chinoises (Xiaoyunque, LibTV, Jimeng) et internationales (Vigloo Studio, TapNow, Higgsfield).
---

# Prompts · Storyboards · Scénarios pour Seedance 2.5

Une chaîne complète, du scénario au prompt prêt à envoyer, tirée de vraies productions de micro-séries et de bandes-annonces. Priorité : **limites de la plateforme > règles de ce pack > goût personnel**.

> Dans ce dossier, `references/`, `templates/` et `examples/` sont en anglais (traduction française à venir). Toutes les règles essentielles sont en français dans ce SKILL.md.

## 0. Trois choses à décider d'abord

1. **Quelle plateforme** : Chine (Xiaoyunque 小云雀 / LibTV / Jimeng 即梦) → lire `references/domestic.md` ; canevas internationaux (Vigloo Studio / TapNow / Higgsfield) → lire `references/overseas.md`. Syntaxe des références, règles sur les visages réels et facturation diffèrent : ne pas mélanger.
2. **Format de livraison** : micro-série verticale 9:16, ou court métrage / bande-annonce 16:9 ? Lire `references/formats-and-budget.md`.
3. **Ce qui est demandé** : scénario → storyboard → prompts, corriger un prompt, ou contrôler un rendu terminé ? Aller directement à l'étape correspondante.

## 1. Déroulé

| Étape | À faire | À lire |
|---|---|---|
| 1 Logline et scénario | Pitch en une phrase, accroche de 3 secondes, scénario d'épisode tournable | `references/viral-hooks.md`, `references/script-and-storyboard.md`, `templates/episode-script.md` |
| 2 Assets | Figer les portraits de référence des personnages, les plans champ/contrechamp des décors, les états des accessoires ; monter la bible d'assets | `references/character-lock.md`, `references/consistency.md`, `templates/asset-bible.md` |
| 3 Storyboard | Découper en unités de génération de 4-30 s, chacune avec des beats à la seconde | `templates/script-to-shots.md`, `templates/storyboard-table.md`, `references/long-takes.md`, `references/action-and-fights.md` |
| 4 Prompt | Utiliser le modèle de la plateforme ; compter les caractères | `references/universal-rules.md`, `templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`, `examples/` |
| 5 Jeu et rythme | Supprimer les gestes symboliques trop appuyés, resserrer le rythme | `references/acting-and-pacing.md` |
| 6 Son | Dialogue natif, répliques multilingues, voix figée, pas de musique de fond | `references/dialogue-audio.md` |
| 7 Avant l'envoi | Risques de modération, ordre des références, format d'image, budget (attendre l'accord de l'utilisateur) | `references/moderation-and-pitfalls.md`, `references/formats-and-budget.md`, `scripts/cost_calc.py` |
| 8 Contrôle du rendu | Planches contact pour vérifier visages, mains, corps qui traversent les objets, texte, fins mortes | `references/qc-checklist.md`, `scripts/contact_sheet.sh`, `templates/qc-report.md` |
| 9 Plan suivant | Extraire l'image de raccord au point de sortie du montage | `references/continuity.md`, `scripts/cut_frame.sh` |
| 10 Post-prod et mise en ligne | Couper les fins, couper la musique ajoutée par le modèle, sous-titres sans ponctuation, vignette 9:16, mention de contenu IA | `references/post-production.md`, `references/domestic.md` (mention IA) |

Choisir une plateforme : `references/platform-comparison.md`. Sources : `references/sources.md`.

## 2. Onze règles d'or (chaque prompt doit les respecter)

1. **Beats à la seconde** : secondes entières, bout à bout, sans trou (`0-2s / 2-7s / 7-10s`). Une seule chose principale par beat.
2. **Ne décrire que l'image actuelle** : le modèle n'a jamais vu vos versions précédentes. Jamais de still, as before, again, « corrigé », « comme la dernière fois ». Les états qui durent s'écrivent au présent (« Cole est assis sur le hayon »).
3. **Les visages viennent uniquement des portraits de référence d'origine, figés** : jamais d'images tirées d'une vidéo générée comme référence de visage. L'image de raccord ne contrôle que le côté caméra, le cadrage, le placement et la lumière.
4. **Dire à quoi sert chaque référence et ce qu'elle ne doit pas contrôler** : `Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`.
5. **Les interdits sont regroupés, courts, écrits FORBIDDEN / « no … »**, jamais « avoid ». Tout ce qui est visuel et peut s'exprimer comme un état positif doit l'être (« l'encadrement de la porte et les quatre personnes restent dans le cadre »).
6. **Le dialogue se place à la seconde exacte où il a lieu**, mot pour mot, avec le locuteur et une description de la voix ; écrire « seul X parle » et, pour les personnages muets, `mouth stays closed, no lip movement`.
7. **Chaque action a une raison** : pas de gestes symboliques appuyés (empocher l'argent, montrer le banc du doigt, fixer l'objectif), rythme serré, pas de long regard figé à la fin.
8. **Chaque nouveau plan part du cadrage et du placement du précédent** : même côté caméra, mêmes positions, sauf si le scénario change clairement de scène.
9. **Pas de sous-titres, pas de filigrane, pas de musique de fond** : le dire une fois au début et une fois à la fin ; tout texte inutile à l'image devient « no lettering, no logos ».
10. **Ne jamais inventer de chiffres** : prix, limites et crédits portent une source et une date ; si on ne sait pas, écrire « non testé ».
11. **La qualité se demande selon la scène** : ne citer que les textures fines réellement présentes dans ce plan (extérieur : roches, eau, feuillage, montagnes lointaines ; intérieur : tissu, veinage du bois, peau, cheveux) et demander « sharp fine detail, no blocky or grid-like compression artifacts » (détail fin et net, sans artefacts de compression en blocs ou en grille). Pas de formules de qualité passe-partout, et ne pas lister ce qui n'est pas à l'image.

## 3. Format de sortie

- Avant chaque prompt, un **tableau récapitulatif des beats** (non collé dans la plateforme) : secondes / cadrage et caméra / action / dialogue / son.
- Le corps du prompt dans son propre bloc de code, avec son nombre de caractères (`wc -m`) et la limite de la plateforme.
- L'ordre d'import des références : `Image 1 = portrait du personnage A` …
- Indiquer comment le coût est estimé (l'affichage de la plateforme fait foi) ; ne jamais envoyer un travail payant sans la confirmation de l'utilisateur.

## 4. À ne pas faire

- Cliquer sur générer à la place de l'utilisateur, acheter des crédits, annuler un travail payant déjà envoyé.
- Mettre des noms de personnes réelles, des marques ou des comptes dans les prompts.
- Promettre des fonctions que la plateforme n'a pas annoncées.
