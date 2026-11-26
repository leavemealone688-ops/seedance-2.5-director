🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Seedance 2.5 Skill: الأوامر · اللوحات القصصية · النصوص**

**حزمة مهارات لإنتاج الفيديو بـ Seedance 2.5** لمساعدي البرمجة بالذكاء الاصطناعي والوكلاء: من فكرة في سطر واحد ونص قابل للتصوير، مرورًا بتقطيع اللقطات، وصولًا إلى أوامر جاهزة للصق، وفحص جودة الناتج، وما بعد الإنتاج. القواعد مأخوذة من إنتاج فعلي لمسلسلات قصيرة عمودية وإعلانات تشويقية، ومُراجَعة مقابل الأدلة الرسمية المنشورة.

- طريقتان للكتابة: **منصات الصين** (Xiaoyunque وLibTV وJimeng) و**المنصات الدولية** (Vigloo Studio وTapNow وHiggsfield)
- ثبات شامل: الشخصيات، حالة الأزياء، تخطيط المكان، حالة الأدوات، الضوء واللون، المحور واتجاه الشاشة، الطقس، الاستمرارية بين الحلقات، تسمية الأصول
- بنية الانتشار: خطاف في 3 ثوانٍ، إيقاع الاحتفاظ بالمشاهد، المفاجآت وحصادها، خطاف نهاية الحلقة، الأغلفة والعناوين، التحسين ببياناتك أنت
- قوالب + أمثلة + سكربتات (أوراق إطارات، إطارات وصل، عدّ الأحرف، تقدير الميزانية)
- متاحة بـ 14 لغة

> أسعار المنصات وحدودها وميزاتها تتغير في أي وقت. كل رقم مذكور مع مصدره وتاريخه (حتى 2026-11): **تحقّق منه على المنصة قبل الاستخدام**. ما لم نختبره بأنفسنا مكتوب عليه «غير مُختبَر».

> النسخة العربية: README وSKILL.md بالعربية؛ أما `references/` و`templates/` و`examples/` فما زالت بالإنجليزية حاليًا.

## ماذا تقدّم هذه المهارة لصنّاع المحتوى

المشكلات اليومية في صناعة دراما بالذكاء الاصطناعي باستخدام Seedance 2.5، وما الذي يتغير حين يتبع مساعدك هذه المهارة. الأمثلة مقتطفات قصيرة من أسلوب كتابة الأوامر الذي تعلّمه المهارة.

### 1. من فكرة في سطر واحد إلى أوامر لكل لقطة جاهزة للتوليد

**قبل**
```text
An old woman comforts a man whose dog is sick.
```
**بعد**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. الوجوه والأزياء والأماكن والأدوات ثابتة بين اللقطات والحلقات

**قبل**
```text
Same woman as before, same clothes.
```
**بعد**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. كل لقطة تتصل بسلاسة باللقطة السابقة

**قبل**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**بعد**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. الإمساك بالمشاهد في 3 ثوانٍ، وإبقاؤه حتى النهاية، وختم كل حلقة بتشويق

**قبل**
```text
0-3s: slow aerial shot of the city at dusk.
```
**بعد**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. حوار ومزامنة شفاه وصوت لا تنتقل إلى شخصية أخرى

**قبل**
```text
Lines listed at the end. "Her lips part."
```
**بعد**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. نتائج مرفوضة أو مهدرة أقل، وميزانية قبل إنفاق الرصيد

**قبل**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**بعد**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. الكتابة للمنصة التي تستخدمها فعلًا (الصين أم الخارج)

**قبل**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**بعد**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. قوائم فحص الجودة وسكربتات ffmpeg بدل الحكم بالعين

**قبل**
```text
Watch it once, notice six fingers after posting.
```
**بعد**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### لمن هذه المهارة

- صنّاع المسلسلات القصيرة العمودية لـ Douyin وShorts وReels وتطبيقات الدراما
- صنّاع الأفلام بالذكاء الاصطناعي: أفلام قصيرة وإعلانات ولقطات طويلة
- فرق العلامات التجارية والإعلانات التي تحتاج شخصيات متكررة ومقاطع مطابقة للمواصفات
- المشاركون في المسابقات الملزمون بالمدة ونسبة العرض وقواعد الوسم

لا نسب نجاح مختلقة هنا: المهارة تطلب من المساعد استخدام البيانات والأسعار الحقيقية فقط.

## اللغات

كل لغة مجلد مهارة صالح ومستقل باسم `name` فريد. ثبّت اللغة التي تحتاجها فقط عبر `--lang`.

| اللغة | المجلد | `--lang` | المترجَم |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | كل شيء (SKILL.md وreferences وtemplates وملاحظات الأمثلة) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | كل شيء (SKILL.md وreferences وtemplates وملاحظات الأمثلة) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | كل شيء (SKILL.md وreferences وtemplates وملاحظات الأمثلة) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | كل شيء (SKILL.md وreferences وtemplates وملاحظات الأمثلة) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md بهذه اللغة؛ references / templates / examples بالإنجليزية حاليًا |

## البنية

```
seedance-2.5-director/
├── README.md / README.<lang>.md   هذا الملف + الترجمات
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               مؤشر للأدوات التي تقرأ AGENTS.md
├── GEMINI.md               سياق إضافة Gemini CLI
├── gemini-extension.json   بيان إضافة Gemini CLI
├── install.sh              التثبيت في كل أداة / إنشاء ملفات zip
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         الصينية المبسطة، النسخة المرجعية
    │   ├── SKILL.md              المدخل: سير العمل + 11 قاعدة صارمة
    │   ├── references/           كتيبات القواعد (المنصات، الكتابة، الثبات، الخطافات، الجودة، ما بعد الإنتاج…)
    │   ├── templates/            قوالب الأوامر / اللوحات / النصوص / الأصول / الفحص
    │   ├── examples/             أوامر نموذجية مأخوذة من توليدات حقيقية
    │   └── scripts/              استخراج الإطارات بـ ffmpeg، عدّ الأحرف، الميزانية
    └── seedance25-director-<lang>/  المهارة نفسها بلغة أخرى
```

## التثبيت

تحتاج إلى `bash`؛ والسكربتات تحتاج أيضًا إلى `ffmpeg`/`ffprobe` و`python3`.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # كل الأدوات، كل اللغات
./install.sh claude --lang ar          # أداة واحدة، لغة واحدة
./install.sh codex --lang en,ar         # عدة لغات
./install.sh cursor --project /path/to/repo --lang ar   # داخل مشروع واحد
./install.sh all --dry-run             # اعرض الوجهة فقط
./install.sh workbuddy-zip --lang ar   # ملف zip للرفع إلى WorkBuddy
```

إذا وُجد مجلد بالاسم نفسه يُعاد تسميته نسخةً احتياطية. تُنسخ المهارات ولا تُربط رمزيًا (بعض الأدوات تتجاهل الروابط الرمزية). نصيحة: ثبّت لغة واحدة لكل أداة؛ مع تثبيت اللغات الـ14 سيرى المساعد 14 مهارة شبه متطابقة.

### ملاحظات لكل أداة

| الأداة | مجلد المستخدم | مجلد المشروع | الحالة |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ تم التحقق من الوثائق الرسمية (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (الإصدارات القديمة تقرأ `~/.codex/skills/`) | `.agents/skills/` | ✅ تم التحقق من الوثائق الرسمية |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ تم التحقق من الوثائق الرسمية (geminicli.com); `/skills list`, `/skills reload` |
| إضافة Gemini CLI | المستودع كاملًا (فيه `gemini-extension.json` والمهارات داخل `skills/`) | — | ✅ تم التحقق من الوثائق الرسمية |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ تم التحقق من الوثائق الرسمية (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ تم التحقق من الوثائق الرسمية (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | في التطبيق: المهارات ← إضافة مهارة ← رفع حزمة محلية | — | ⚠️ غير مُختبَر: الصفحة الرسمية تذكر استيراد حزمة محلية دون ذكر صيغتها؛ `./install.sh workbuddy-zip` يضغط مجلد SKILL.md فقط، ولم يُختبر الاستيراد |

بعد التثبيت: في **Claude Code** اكتب `/seedance25-director-ar` (أو صف المهمة فقط)؛ وفي **Codex** `$seedance25-director-ar` أو `/skills`؛ وفي **Gemini CLI** تحقّق بـ `/skills list`؛ وفي **Cursor** اكتب `/` في محادثة Agent وابحث عن `seedance25`؛ وفي **CodeBuddy** افتح `/skills`.

### قراءة القواعد فقط

ابدأ من `skills/seedance25-director-ar/SKILL.md` واتبع جدول سير العمل إلى الملفات التي تحتاجها.

## بداية سريعة

1. أخبر المساعد بالمنصة (مثلًا Xiaoyunque 9:16 10s) والقصة والصور المرجعية للشخصيات.
2. باتباع `SKILL.md` يعطيك: جدول الإيقاع ← ترتيب رفع المراجع ← نص الأمر (مع عدد الأحرف) ← الميزانية.
3. تؤكّد أنت وترسل بنفسك على المنصة (المهارة لا ترسل أي مهمة مدفوعة نيابة عنك).
4. بعد التوليد، اطلب تشغيل `scripts/contact_sheet.sh` لفحص الجودة، ثم `scripts/cut_frame.sh` لاستخراج إطار الوصل للقطة التالية.

## المبادئ

1. كل توليد يكلّف مالًا: اذكر الإعدادات والميزانية أولًا، ولا ترسل إلا بعد التأكيد.
2. الوجوه من الصور المرجعية الأصلية فقط؛ إطار الوصل يتحكم في الكاميرا والمواقع واللون فقط.
3. كل لقطة تبدأ من حجم اللقطة السابقة ومواقعها.
4. أداء طبيعي، إيقاع مشدود، بلا إيماءات رمزية مفتعلة.
5. اطلب تفاصيل حادة للخامات الموجودة فعلًا في اللقطة، بلا تشوهات ضغط على شكل كتل أو شبكة.
6. اكتم موسيقى النموذج في ما بعد الإنتاج، واقصص الذيول الميتة، وترجمة مدمجة بلا علامات ترقيم، وأغلفة 9:16.
7. لا تخترع أرقامًا أبدًا؛ المجهول «غير مُختبَر». لا حسابات ولا كلمات مرور ولا بريد ولا مفاتيح في المستودع.

## المساهمة

- نتائج اختبار جديدة: اذكر المنصة والتاريخ والإعدادات، وحدّث ملف `references/*.md` المناسب وجدول الأسعار في `scripts/cost_calc.py`.
- عدّل النسخة المرجعية `skills/seedance25-director/` أولًا ثم مجلدات اللغات. `AGENTS.md` و`GEMINI.md` مجرد مؤشرات.

## الترخيص

مرخّص بموجب [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (نسب المصنف - غير تجاري): يمكنك الاستخدام والتعديل والمشاركة بحرية مع ذكر المصدر؛ ويُمنع الاستخدام التجاري.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
