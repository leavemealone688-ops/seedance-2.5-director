🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Seedance 2.5 Skill: промпты · раскадровки · сценарии**

**Пакет навыков для видеопроизводства в Seedance 2.5** для ИИ-ассистентов по программированию и агентов: от идеи в одну строку и сценария, который можно снять, через разбивку на кадры — до промптов, готовых к вставке, проверки рендера и постпродакшна. Правила взяты из реального производства вертикальных мини-сериалов и трейлеров и сверены с официальными публичными руководствами.

- Два подхода: **китайские платформы** (Xiaoyunque, LibTV, Jimeng) и **зарубежные платформы** (Vigloo Studio, TapNow, Higgsfield)
- Полное единообразие: персонажи, состояние костюмов, планировка локаций, состояние реквизита, свет и цвет, ось и направление в кадре, погода, связность между сериями, именование ассетов
- Вирусная структура: хук за 3 секунды, ритм удержания, повороты и их отыгрыш, хук в конце серии, обложки и названия, улучшение по собственной аналитике
- Шаблоны + примеры + скрипты (контактные листы, стыковочные кадры, подсчёт символов, оценка бюджета)
- Доступен на 14 языках

> Цены, лимиты и функции платформ могут измениться в любой момент. У каждой цифры указаны источник и дата (на 2026-11): **проверьте на платформе перед использованием**. Всё, что мы сами не проверяли, помечено «не проверено».

> Русская версия: README и SKILL.md на русском; `references/`, `templates/` и `examples/` пока на английском.

## Что этот навык даёт авторам

Ежедневные проблемы при создании ИИ-сериалов в Seedance 2.5 и что меняется, когда ассистент следует этому навыку. Примеры — короткие фрагменты того стиля промптов, которому он учит.

### 1. От идеи в одну строку к покадровым промптам, готовым к генерации

**До**
```text
An old woman comforts a man whose dog is sick.
```
**После**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. Лица, костюмы, локации и реквизит не меняются между кадрами и сериями

**До**
```text
Same woman as before, same clothes.
```
**После**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. Каждый кадр чисто монтируется с предыдущим

**До**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**После**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. Зацепить за 3 секунды, удержать до конца, закончить серию клиффхэнгером

**До**
```text
0-3s: slow aerial shot of the city at dusk.
```
**После**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. Реплики, липсинк и голос не уходят к другому персонажу

**До**
```text
Lines listed at the end. "Her lips part."
```
**После**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. Меньше отклонённых и выброшенных рендеров, бюджет до траты кредитов

**До**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**После**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. Писать под платформу, которой вы реально пользуетесь (Китай или зарубежье)

**До**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**После**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. Чек-листы QC и скрипты ffmpeg вместо проверки на глаз

**До**
```text
Watch it once, notice six fingers after posting.
```
**После**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### Для кого

- Авторы вертикальных мини-сериалов для Douyin, Shorts, Reels и приложений коротких драм
- ИИ-кинематографисты: короткие фильмы, трейлеры, длинные планы
- Бренд- и рекламные команды, которым нужны повторяемые персонажи и ролики по ТЗ
- Участники конкурсов, которым нужно соблюсти длительность, формат кадра и правила маркировки

Никаких выдуманных процентов успеха: навык требует от ассистента опираться только на реальную аналитику и реальные цены.

## Языки

Каждый язык — отдельная корректная папка навыка с уникальным `name`. С `--lang` можно поставить только нужный.

| Язык | Папка | `--lang` | Переведено |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | Всё (SKILL.md, references, templates, пояснения к примерам) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | Всё (SKILL.md, references, templates, пояснения к примерам) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | Всё (SKILL.md, references, templates, пояснения к примерам) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | Всё (SKILL.md, references, templates, пояснения к примерам) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md на этом языке; references / templates / examples пока на английском |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md на этом языке; references / templates / examples пока на английском |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md на этом языке; references / templates / examples пока на английском |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md на этом языке; references / templates / examples пока на английском |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md на этом языке; references / templates / examples пока на английском |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md на этом языке; references / templates / examples пока на английском |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md на этом языке; references / templates / examples пока на английском |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md на этом языке; references / templates / examples пока на английском |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md на этом языке; references / templates / examples пока на английском |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md на этом языке; references / templates / examples пока на английском |

## Структура

```
seedance-2.5-director/
├── README.md / README.<lang>.md   этот файл + переводы
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               указатель для инструментов, читающих AGENTS.md
├── GEMINI.md               контекст расширения Gemini CLI
├── gemini-extension.json   манифест расширения Gemini CLI
├── install.sh              установка в каждый инструмент / сборка zip
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         упрощённый китайский, эталонная версия
    │   ├── SKILL.md              вход: порядок работы + 11 железных правил
    │   ├── references/           своды правил (платформы, письмо, единообразие, хуки, QC, пост…)
    │   ├── templates/            шаблоны промпта / раскадровки / сценария / ассетов / QC
    │   ├── examples/             примеры промптов из реальных рендеров
    │   └── scripts/              кадры через ffmpeg, подсчёт символов, бюджет
    └── seedance25-director-<lang>/  тот же навык на другом языке
```

## Установка

Нужен `bash`; скриптам также нужны `ffmpeg`/`ffprobe` и `python3`.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # все инструменты, все языки
./install.sh claude --lang ru          # один инструмент, один язык
./install.sh codex --lang en,ru         # несколько языков
./install.sh cursor --project /path/to/repo --lang ru   # в конкретный проект
./install.sh all --dry-run             # только показать, куда
./install.sh workbuddy-zip --lang ru   # zip для загрузки в WorkBuddy
```

Существующая папка с тем же именем переименовывается в резервную копию. Навыки копируются, а не связываются ссылками (некоторые инструменты пропускают симлинки). Совет: ставьте по одному языку на инструмент; со всеми 14 ассистент увидит 14 почти одинаковых навыков.

### Заметки по инструментам

| Инструмент | Папка пользователя | Папка проекта | Статус |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ сверено с официальной документацией (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (старые версии читают `~/.codex/skills/`) | `.agents/skills/` | ✅ сверено с официальной документацией |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ сверено с официальной документацией (geminicli.com); `/skills list`, `/skills reload` |
| Расширение Gemini CLI | весь репозиторий (есть `gemini-extension.json`, навыки в `skills/`) | — | ✅ сверено с официальной документацией |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ сверено с официальной документацией (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ сверено с официальной документацией (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | клиент: Навыки → Добавить навык → Загрузить локальный пакет | — | ⚠️ не проверено: официальная страница упоминает импорт локального пакета, но не формат; `./install.sh workbuddy-zip` лишь упаковывает папку SKILL.md, импорт не проверялся |

После установки: в **Claude Code** введите `/seedance25-director-ru` (или просто опишите задачу); в **Codex** — `$seedance25-director-ru` или `/skills`; в **Gemini CLI** проверьте `/skills list`; в **Cursor** наберите `/` в чате Agent и найдите `seedance25`; в **CodeBuddy** откройте `/skills`.

### Просто прочитать правила

Начните с `skills/seedance25-director-ru/SKILL.md` и идите по таблице порядка работы к нужным файлам.

## Быстрый старт

1. Сообщите ассистенту платформу (например, Xiaoyunque 9:16 10s), сюжет и портреты персонажей.
2. По `SKILL.md` он выдаст: таблицу битов → порядок загрузки референсов → текст промпта (с числом символов) → бюджет.
3. Вы подтверждаете и сами отправляете на платформе (навык никогда не отправляет платные задачи за вас).
4. После рендера попросите запустить `scripts/contact_sheet.sh` для QC, затем `scripts/cut_frame.sh`, чтобы взять стыковочный кадр для следующего плана.

## Принципы

1. Каждый рендер стоит денег: сначала настройки и бюджет, отправка только после подтверждения.
2. Лица — только из оригинальных портретов; стыковочный кадр задаёт лишь камеру, расстановку и цвет.
3. Каждый кадр продолжает крупность и расстановку предыдущего.
4. Естественная игра, плотный темп, без нарочитых символических жестов.
5. Просить чёткую детализацию фактур, которые реально есть в кадре, без блочных или сеточных артефактов сжатия.
6. Глушить музыку модели на посте, обрезать мёртвые хвосты, вшитые субтитры без знаков препинания, обложки 9:16.
7. Никогда не выдумывать цифры; неизвестное — «не проверено». Никаких аккаунтов, паролей, почты и ключей в репозитории.

## Как помочь

- Новые результаты: укажите платформу, дату и настройки; обновите нужный `references/*.md` и таблицу тарифов в `scripts/cost_calc.py`.
- Сначала меняйте эталон `skills/seedance25-director/`, затем языковые папки. `AGENTS.md` и `GEMINI.md` — только указатели.

## Лицензия

Распространяется по лицензии [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (С указанием авторства — Некоммерческая): можно свободно использовать, изменять и распространять с указанием автора; коммерческое использование запрещено.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
