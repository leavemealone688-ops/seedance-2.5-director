🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Seedance 2.5 Skill: พรอมต์ · สตอรีบอร์ด · บท**

**ชุด skill สำหรับผลิตวิดีโอด้วย Seedance 2.5** สำหรับผู้ช่วยเขียนโค้ด AI และเอเจนต์ ตั้งแต่ไอเดียหนึ่งประโยคและบทที่ถ่ายได้จริง การแตกช็อต ไปจนถึงพรอมต์ที่วางใช้ได้ทันที การตรวจคุณภาพผลลัพธ์ และงานโพสต์ กฎทั้งหมดมาจากการผลิตซีรีส์สั้นแนวตั้งและตัวอย่างหนังจริง และเทียบกับคู่มือทางการที่เผยแพร่สาธารณะ

- สองแนวทาง: **แพลตฟอร์มจีน** (Xiaoyunque, LibTV, Jimeng) และ **แพลตฟอร์มต่างประเทศ** (Vigloo Studio, TapNow, Higgsfield)
- ความต่อเนื่องครบทุกด้าน: ตัวละคร สถานะเครื่องแต่งกาย ผังฉาก สถานะพร็อพ แสงและสี แกนภาพและทิศทางบนจอ สภาพอากาศ ข้ามตอน การตั้งชื่อแอสเซ็ต
- โครงสร้างไวรัล: ฮุก 3 วินาที จังหวะรักษาผู้ชม จุดหักมุมและการเฉลย ฮุกท้ายตอน ปกและชื่อเรื่อง ปรับปรุงด้วยข้อมูลของคุณเอง
- เทมเพลต + ตัวอย่าง + สคริปต์ (contact sheet เฟรมต่อเนื่อง นับตัวอักษร ประเมินงบ)
- มีให้ 14 ภาษา

> ราคา ขีดจำกัด และฟีเจอร์ของแพลตฟอร์มเปลี่ยนได้ทุกเมื่อ ตัวเลขทุกตัวมีแหล่งที่มาและวันที่ (ณ 2026-11) **โปรดตรวจสอบบนแพลตฟอร์มก่อนใช้** สิ่งที่เรายังไม่ได้ทดสอบจะเขียนว่า "ยังไม่ได้ทดสอบ"

> ฉบับภาษาไทย: README และ SKILL.md เป็นภาษาไทย ส่วน `references/`, `templates/` และ `examples/` ยังเป็นภาษาอังกฤษในตอนนี้

## skill นี้ช่วยครีเอเตอร์ได้อย่างไร

ปัญหาที่เจอทุกวันเมื่อทำซีรีส์ AI ด้วย Seedance 2.5 และสิ่งที่เปลี่ยนไปเมื่อผู้ช่วยของคุณทำตาม skill นี้ ตัวอย่างเป็นข้อความสั้น ๆ จากวิธีเขียนพรอมต์ที่ skill สอน

### 1. จากไอเดียหนึ่งประโยคเป็นพรอมต์รายช็อตที่สร้างได้ทันที

**ก่อน**
```text
An old woman comforts a man whose dog is sick.
```
**หลัง**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. ใบหน้า ชุด ฉาก และพร็อพเหมือนเดิมทุกช็อตทุกตอน

**ก่อน**
```text
Same woman as before, same clothes.
```
**หลัง**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. ทุกช็อตต่อจากช็อตก่อนได้อย่างลื่นไหล

**ก่อน**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**หลัง**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. ดึงคนดูใน 3 วินาที ให้ดูจนจบ และปิดทุกตอนด้วยจุดค้าง

**ก่อน**
```text
0-3s: slow aerial shot of the city at dusk.
```
**หลัง**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. บทพูด ลิปซิงก์ และเสียงไม่สลับไปอยู่กับตัวละครอื่น

**ก่อน**
```text
Lines listed at the end. "Her lips part."
```
**หลัง**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. งานถูกปฏิเสธหรือเสียเปล่าน้อยลง และรู้งบก่อนใช้เครดิต

**ก่อน**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**หลัง**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. เขียนให้ตรงกับแพลตฟอร์มที่ใช้จริง (จีน หรือ ต่างประเทศ)

**ก่อน**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**หลัง**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. ใช้เช็กลิสต์ QC และสคริปต์ ffmpeg แทนการกะด้วยตา

**ก่อน**
```text
Watch it once, notice six fingers after posting.
```
**หลัง**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### เหมาะกับใคร

- ครีเอเตอร์ซีรีส์สั้นแนวตั้งสำหรับ Douyin, Shorts, Reels หรือแอปซีรีส์สั้น
- คนทำหนัง AI ที่ทำหนังสั้น ตัวอย่างหนัง และลองเทค
- ทีมแบรนด์และโฆษณาที่ต้องใช้ตัวละครซ้ำและส่งงานตามสเปก
- ผู้ส่งประกวดที่ต้องทำตามความยาว อัตราส่วนภาพ และกฎการติดป้าย AI

ไม่มีอัตราความสำเร็จที่แต่งขึ้น skill นี้กำหนดให้ผู้ช่วยใช้แต่ข้อมูลและราคาจริงเท่านั้น

## ภาษา

แต่ละภาษาเป็นโฟลเดอร์ skill ที่ถูกต้องและแยกกัน มี `name` ไม่ซ้ำกัน ติดตั้งเฉพาะภาษาที่ต้องการด้วย `--lang`

| ภาษา | โฟลเดอร์ | `--lang` | ส่วนที่แปล |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | ทั้งหมด (SKILL.md, references, templates, คำอธิบายตัวอย่าง) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | ทั้งหมด (SKILL.md, references, templates, คำอธิบายตัวอย่าง) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | ทั้งหมด (SKILL.md, references, templates, คำอธิบายตัวอย่าง) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | ทั้งหมด (SKILL.md, references, templates, คำอธิบายตัวอย่าง) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md เป็นภาษานี้; references / templates / examples ยังเป็นภาษาอังกฤษ |

## โครงสร้าง

```
seedance-2.5-director/
├── README.md / README.<lang>.md   ไฟล์นี้ + ฉบับแปล
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               ตัวชี้สำหรับเครื่องมือที่อ่าน AGENTS.md
├── GEMINI.md               บริบทส่วนขยาย Gemini CLI
├── gemini-extension.json   manifest ส่วนขยาย Gemini CLI
├── install.sh              ติดตั้งลงแต่ละเครื่องมือ / สร้าง zip
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         จีนตัวย่อ ฉบับอ้างอิง
    │   ├── SKILL.md              จุดเริ่ม: ขั้นตอน + กฎเหล็ก 11 ข้อ
    │   ├── references/           คู่มือกฎ (แพลตฟอร์ม การเขียน ความต่อเนื่อง ฮุก QC โพสต์…)
    │   ├── templates/            เทมเพลตพรอมต์ / สตอรีบอร์ด / บท / แอสเซ็ต / QC
    │   ├── examples/             ตัวอย่างพรอมต์จากงานที่สร้างจริง
    │   └── scripts/              ดึงเฟรมด้วย ffmpeg นับตัวอักษร ประเมินงบ
    └── seedance25-director-<lang>/  skill เดียวกันในภาษาอื่น
```

## การติดตั้ง

ต้องมี `bash` และสคริปต์ต้องใช้ `ffmpeg`/`ffprobe` กับ `python3` ด้วย

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # ทุกเครื่องมือ ทุกภาษา
./install.sh claude --lang th          # เครื่องมือเดียว ภาษาเดียว
./install.sh codex --lang en,th         # หลายภาษา
./install.sh cursor --project /path/to/repo --lang th   # ลงในโปรเจกต์เดียว
./install.sh all --dry-run             # แค่แสดงว่าจะติดตั้งที่ไหน
./install.sh workbuddy-zip --lang th   # zip สำหรับอัปโหลดเข้า WorkBuddy
```

ถ้ามีโฟลเดอร์ชื่อเดียวกันอยู่แล้ว จะเปลี่ยนชื่อเก็บไว้เป็นสำรอง skill ถูกคัดลอก ไม่ใช่ symlink (บางเครื่องมือข้าม symlink) คำแนะนำ: ติดตั้งเครื่องมือละหนึ่งภาษา ถ้าติดตั้งครบ 14 ภาษา ผู้ช่วยจะเห็น skill ที่เกือบเหมือนกัน 14 ตัว

### หมายเหตุแต่ละเครื่องมือ

| เครื่องมือ | โฟลเดอร์ผู้ใช้ | โฟลเดอร์โปรเจกต์ | สถานะ |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ ตรวจกับเอกสารทางการแล้ว (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (เวอร์ชันเก่าอ่าน `~/.codex/skills/`) | `.agents/skills/` | ✅ ตรวจกับเอกสารทางการแล้ว |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ ตรวจกับเอกสารทางการแล้ว (geminicli.com); `/skills list`, `/skills reload` |
| ส่วนขยาย Gemini CLI | ทั้ง repo (มี `gemini-extension.json` และ skill อยู่ใน `skills/`) | — | ✅ ตรวจกับเอกสารทางการแล้ว |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ ตรวจกับเอกสารทางการแล้ว (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ ตรวจกับเอกสารทางการแล้ว (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | ในแอป: ทักษะ → เพิ่มทักษะ → อัปโหลดแพ็กเกจในเครื่อง | — | ⚠️ ยังไม่ได้ทดสอบ: หน้าทางการพูดถึงการนำเข้าแพ็กเกจในเครื่องแต่ไม่ได้บอกรูปแบบ `./install.sh workbuddy-zip` แค่บีบอัดโฟลเดอร์ SKILL.md ยังไม่ได้ทดสอบการนำเข้า |

หลังติดตั้ง: ใน **Claude Code** พิมพ์ `/seedance25-director-th` (หรือแค่อธิบายงาน) ใน **Codex** พิมพ์ `$seedance25-director-th` หรือ `/skills` ใน **Gemini CLI** ตรวจด้วย `/skills list` ใน **Cursor** พิมพ์ `/` ในแชต Agent แล้วค้นหา `seedance25` ใน **CodeBuddy** เปิด `/skills`

### อ่านกฎอย่างเดียว

เริ่มที่ `skills/seedance25-director-th/SKILL.md` แล้วตามตารางขั้นตอนไปยังไฟล์ที่ต้องการ

## เริ่มต้นอย่างรวดเร็ว

1. บอกผู้ช่วยว่าใช้แพลตฟอร์มอะไร (เช่น Xiaoyunque 9:16 10s) เรื่องย่อ และภาพอ้างอิงตัวละคร
2. ผู้ช่วยทำตาม `SKILL.md` แล้วให้: ตารางจังหวะ → ลำดับอัปโหลดภาพอ้างอิง → เนื้อพรอมต์ (พร้อมจำนวนตัวอักษร) → งบประมาณ
3. คุณยืนยันแล้วส่งบนแพลตฟอร์มเอง (skill นี้ไม่ส่งงานที่เสียเงินแทนคุณ)
4. เมื่อได้ผลลัพธ์ ให้รัน `scripts/contact_sheet.sh` เพื่อตรวจ QC แล้วใช้ `scripts/cut_frame.sh` ดึงเฟรมต่อเนื่องสำหรับช็อตถัดไป

## หลักการ

1. การสร้างทุกครั้งมีค่าใช้จ่าย: แจ้งการตั้งค่าและงบก่อน ส่งหลังได้รับการยืนยันเท่านั้น
2. ใบหน้ามาจากภาพอ้างอิงต้นฉบับเท่านั้น เฟรมต่อเนื่องคุมแค่กล้อง ตำแหน่ง และสี
3. ทุกช็อตต่อจากขนาดภาพและตำแหน่งของช็อตก่อน
4. การแสดงเป็นธรรมชาติ จังหวะกระชับ ไม่มีท่าทางเชิงสัญลักษณ์โจ่งแจ้ง
5. ขอรายละเอียดคมชัดเฉพาะพื้นผิวที่มีอยู่จริงในช็อต ไม่มีสัญญาณรบกวนจากการบีบอัดเป็นบล็อกหรือตาราง
6. ปิดเพลงที่โมเดลใส่มาตอนโพสต์ ตัดท้ายที่ค้าง ซับไตเติลฝังไม่มีเครื่องหมายวรรคตอน ปก 9:16
7. ห้ามแต่งตัวเลข ไม่รู้ให้เขียน "ยังไม่ได้ทดสอบ" ไม่เก็บบัญชี รหัสผ่าน อีเมล หรือคีย์ไว้ใน repo

## ร่วมพัฒนา

- ผลทดสอบใหม่: ระบุแพลตฟอร์ม วันที่ และการตั้งค่า แล้วอัปเดต `references/*.md` ที่เกี่ยวข้องและตารางราคาใน `scripts/cost_calc.py`
- แก้ฉบับอ้างอิง `skills/seedance25-director/` ก่อน แล้วค่อยแก้โฟลเดอร์ภาษาอื่น `AGENTS.md` และ `GEMINI.md` เป็นแค่ตัวชี้

## สัญญาอนุญาต

ใช้สัญญาอนุญาต [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (แสดงที่มา-ไม่ใช้เพื่อการค้า): ใช้ ดัดแปลง และแบ่งปันได้อย่างอิสระโดยต้องระบุที่มา ห้ามใช้เพื่อการค้า

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
