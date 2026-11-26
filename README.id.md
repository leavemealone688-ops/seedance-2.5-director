🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Skill Seedance 2.5: Prompt · Storyboard · Naskah**

**Paket skill produksi video Seedance 2.5** untuk asisten coding AI dan agen: dari pitch satu kalimat dan naskah siap syuting, pemecahan shot, sampai prompt siap tempel, QC hasil render, dan pascaproduksi. Aturannya berasal dari produksi drama pendek vertikal dan trailer sungguhan, dicocokkan dengan panduan resmi yang terbuka untuk publik.

- Dua cara tulis: **platform Tiongkok** (Xiaoyunque, LibTV, Jimeng) dan **platform luar negeri** (Vigloo Studio, TapNow, Higgsfield)
- Konsistensi menyeluruh: karakter, status kostum, tata ruang lokasi, status properti, cahaya dan warna, sumbu dan arah layar, cuaca, antar-episode, penamaan aset
- Struktur viral: hook 3 detik, ritme retensi, twist dan payoff, hook akhir episode, sampul dan judul, perbaikan dengan data sendiri
- Template + contoh + skrip (contact sheet, frame sambungan, hitung karakter, perkiraan anggaran)
- Tersedia dalam 14 bahasa

> Harga, batas, dan fitur platform bisa berubah kapan saja. Setiap angka disertai sumber dan tanggal (per 2026-11): **cek di platform sebelum dipakai**. Yang belum kami uji ditandai "belum diuji".

> Versi Bahasa Indonesia: README dan SKILL.md berbahasa Indonesia; `references/`, `templates/`, dan `examples/` untuk sementara berbahasa Inggris.

## Apa yang dikerjakan skill ini untuk kreator

Masalah sehari-hari saat membuat drama AI dengan Seedance 2.5, dan apa yang berubah ketika asisten Anda mengikuti skill ini. Contohnya adalah potongan pendek gaya prompt yang diajarkan skill ini.

### 1. Dari ide satu kalimat jadi prompt per shot yang siap di-generate

**Sebelum**
```text
An old woman comforts a man whose dog is sick.
```
**Sesudah**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. Wajah, kostum, lokasi, dan properti tetap sama antar-shot dan antar-episode

**Sebelum**
```text
Same woman as before, same clothes.
```
**Sesudah**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. Setiap shot menyambung mulus dari shot sebelumnya

**Sebelum**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**Sesudah**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. Memikat dalam 3 detik, menahan penonton, menutup tiap episode dengan cliffhanger

**Sebelum**
```text
0-3s: slow aerial shot of the city at dusk.
```
**Sesudah**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. Dialog, lip sync, dan suara tidak pindah ke karakter lain

**Sebelum**
```text
Lines listed at the end. "Her lips part."
```
**Sesudah**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. Lebih sedikit render ditolak atau terbuang, dan anggaran sebelum memakai kredit

**Sebelum**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**Sesudah**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. Menulis untuk platform yang benar-benar Anda pakai (Tiongkok vs luar negeri)

**Sebelum**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**Sesudah**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. Checklist QC dan skrip ffmpeg, bukan sekadar dilihat sekilas

**Sebelum**
```text
Watch it once, notice six fingers after posting.
```
**Sesudah**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### Untuk siapa

- Kreator drama pendek vertikal untuk Douyin, Shorts, Reels, atau aplikasi drama
- Sineas AI yang membuat film pendek, trailer, dan long take
- Tim brand dan iklan yang butuh karakter berulang dan video sesuai spesifikasi
- Peserta lomba yang harus memenuhi durasi, rasio aspek, dan aturan label

Tidak ada angka keberhasilan karangan di sini: skill ini meminta asisten hanya memakai data dan harga sungguhan.

## Bahasa

Setiap bahasa adalah folder skill yang sah dan mandiri, dengan `name` unik. Pasang hanya yang Anda perlukan dengan `--lang`.

| Bahasa | Folder | `--lang` | Diterjemahkan |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | Semua (SKILL.md, references, templates, catatan contoh) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | Semua (SKILL.md, references, templates, catatan contoh) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | Semua (SKILL.md, references, templates, catatan contoh) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | Semua (SKILL.md, references, templates, catatan contoh) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md dalam bahasa ini; references / templates / examples sementara berbahasa Inggris |

## Struktur

```
seedance-2.5-director/
├── README.md / README.<lang>.md   file ini + terjemahan
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               penunjuk untuk alat yang membaca AGENTS.md
├── GEMINI.md               konteks ekstensi Gemini CLI
├── gemini-extension.json   manifest ekstensi Gemini CLI
├── install.sh              pasang ke tiap alat / buat zip
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         Tionghoa Sederhana, versi acuan
    │   ├── SKILL.md              pintu masuk: alur + 11 aturan wajib
    │   ├── references/           buku aturan (platform, penulisan, konsistensi, hook, QC, pasca…)
    │   ├── templates/            template prompt / storyboard / naskah / aset / QC
    │   ├── examples/             contoh prompt dari render sungguhan
    │   └── scripts/              ambil frame dengan ffmpeg, hitung karakter, anggaran
    └── seedance25-director-<lang>/  skill yang sama dalam bahasa lain
```

## Pemasangan

Perlu `bash`; skrip juga memerlukan `ffmpeg`/`ffprobe` dan `python3`.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # semua alat, semua bahasa
./install.sh claude --lang id          # satu alat, satu bahasa
./install.sh codex --lang en,id         # beberapa bahasa
./install.sh cursor --project /path/to/repo --lang id   # ke dalam satu proyek
./install.sh all --dry-run             # hanya tampilkan tujuannya
./install.sh workbuddy-zip --lang id   # zip untuk diunggah ke WorkBuddy
```

Folder lama dengan nama sama akan diganti namanya sebagai cadangan. Skill disalin, bukan symlink (sebagian alat melewati symlink). Saran: pasang satu bahasa per alat; kalau ke-14 dipasang, asisten melihat 14 skill yang hampir sama.

### Catatan per alat

| Alat | Folder pengguna | Folder proyek | Status |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ dicek dengan dokumentasi resmi (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (versi lama membaca `~/.codex/skills/`) | `.agents/skills/` | ✅ dicek dengan dokumentasi resmi |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ dicek dengan dokumentasi resmi (geminicli.com); `/skills list`, `/skills reload` |
| Ekstensi Gemini CLI | seluruh repo (ada `gemini-extension.json`, skill di `skills/`) | — | ✅ dicek dengan dokumentasi resmi |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ dicek dengan dokumentasi resmi (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ dicek dengan dokumentasi resmi (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | klien: Skill → Tambah skill → Unggah paket lokal | — | ⚠️ belum diuji: halaman resmi menyebut impor paket lokal tapi tidak menyebut formatnya; `./install.sh workbuddy-zip` men-zip folder SKILL.md, impor belum diuji |

Setelah dipasang: di **Claude Code** ketik `/seedance25-director-id` (atau cukup jelaskan tugasnya); di **Codex** `$seedance25-director-id` atau `/skills`; di **Gemini CLI** cek dengan `/skills list`; di **Cursor** ketik `/` di chat Agent lalu cari `seedance25`; di **CodeBuddy** buka `/skills`.

### Cukup baca aturannya

Mulai dari `skills/seedance25-director-id/SKILL.md` dan ikuti tabel alurnya ke file yang Anda perlukan.

## Mulai cepat

1. Beri tahu asisten platformnya (mis. Xiaoyunque 9:16 10s), ceritanya, dan potret karakter.
2. Mengikuti `SKILL.md`, ia memberi: tabel beat → urutan unggah referensi → isi prompt (dengan jumlah karakter) → anggaran.
3. Anda mengonfirmasi lalu mengirim sendiri di platform (skill ini tidak pernah mengirim pekerjaan berbayar untuk Anda).
4. Setelah render, minta ia menjalankan `scripts/contact_sheet.sh` untuk QC, lalu `scripts/cut_frame.sh` untuk mengambil frame sambungan shot berikutnya.

## Prinsip

1. Setiap render memakan biaya: sebutkan pengaturan dan anggaran dulu, kirim hanya setelah dikonfirmasi.
2. Wajah hanya dari potret asli; frame sambungan hanya mengatur kamera, posisi, dan warna.
3. Setiap shot menyambung dari ukuran dan posisi shot sebelumnya.
4. Akting natural, tempo rapat, tanpa gestur simbolis kentara.
5. Minta detail tajam pada tekstur yang benar-benar ada di shot, tanpa artefak kompresi berbentuk blok atau kisi.
6. Matikan musik dari model saat pasca, potong ekor kosong, subtitle tertanam tanpa tanda baca, sampul 9:16.
7. Jangan mengarang angka; kalau tidak tahu, "belum diuji". Tidak ada akun, kata sandi, email, atau kunci di repo.

## Berkontribusi

- Hasil uji baru: sebutkan platform, tanggal, dan pengaturan; perbarui `references/*.md` yang sesuai dan tabel tarif di `scripts/cost_calc.py`.
- Ubah dulu versi acuan `skills/seedance25-director/`, lalu folder bahasa. `AGENTS.md` dan `GEMINI.md` hanya penunjuk.

## Lisensi

Berlisensi [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (Atribusi-NonKomersial): bebas dipakai, diubah, dan dibagikan dengan atribusi; dilarang untuk tujuan komersial.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
