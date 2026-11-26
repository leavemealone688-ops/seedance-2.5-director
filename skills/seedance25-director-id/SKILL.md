---
name: seedance25-director-id
description: (Bahasa Indonesia) Prompt video, storyboard, dan naskah siap syuting untuk Seedance 2.5. Untuk menulis atau memperbaiki satu prompt Seedance 2.5 (4-30 detik), memecah naskah menjadi shot dengan beat per detik, menjaga konsistensi karakter, lokasi, properti, dan cahaya, sambungan antar-shot, hook drama pendek vertikal, dialog dan lip sync, menghindari penolakan moderasi, QC, dan pascaproduksi. Platform Tiongkok (Xiaoyunque, LibTV, Jimeng) dan luar negeri (Vigloo Studio, TapNow, Higgsfield).
---

# Prompt · Storyboard · Naskah Seedance 2.5

Alur lengkap dari naskah sampai prompt siap kirim, disarikan dari produksi drama pendek dan trailer sungguhan. Urutan prioritas: **batas keras platform > aturan paket ini > gaya pribadi**.

> Di folder ini, `references/`, `templates/`, dan `examples/` masih berbahasa Inggris (terjemahan Indonesia belum selesai). Semua aturan inti sudah ditulis dalam bahasa Indonesia di SKILL.md ini.

## 0. Putuskan tiga hal dulu

1. **Platform mana**: Tiongkok (Xiaoyunque 小云雀 / LibTV / Jimeng 即梦) → baca `references/domestic.md`; kanvas luar negeri (Vigloo Studio / TapNow / Higgsfield) → baca `references/overseas.md`. Sintaks referensi, aturan wajah asli, dan penagihan berbeda; jangan dicampur.
2. **Format kirim**: drama pendek vertikal 9:16, atau film pendek / trailer 16:9? Baca `references/formats-and-budget.md`.
3. **Apa yang diminta**: naskah → storyboard → prompt, memperbaiki satu prompt, atau QC hasil render? Langsung ke langkah yang sesuai.

## 1. Alur kerja

| Langkah | Yang dikerjakan | Baca |
|---|---|---|
| 1 Logline & naskah | Pitch satu kalimat, hook 3 detik, naskah episode yang bisa disyut | `references/viral-hooks.md`, `references/script-and-storyboard.md`, `templates/episode-script.md` |
| 2 Aset | Kunci potret referensi karakter, plate utama/kebalikan lokasi, status properti; buat bible aset | `references/character-lock.md`, `references/consistency.md`, `templates/asset-bible.md` |
| 3 Storyboard | Bagi menjadi unit generasi 4-30 detik, masing-masing dengan beat per detik | `templates/script-to-shots.md`, `templates/storyboard-table.md`, `references/long-takes.md`, `references/action-and-fights.md` |
| 4 Prompt | Pakai template platform; hitung jumlah karakter | `references/universal-rules.md`, `templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`, `examples/` |
| 5 Akting & tempo | Buang gestur simbolis yang terlalu kentara, rapatkan tempo | `references/acting-and-pacing.md` |
| 6 Suara | Dialog native, dialog multibahasa, kunci suara, tanpa musik latar | `references/dialogue-audio.md` |
| 7 Sebelum kirim | Risiko moderasi, urutan referensi, rasio aspek, anggaran (tunggu OK pengguna) | `references/moderation-and-pitfalls.md`, `references/formats-and-budget.md`, `scripts/cost_calc.py` |
| 8 QC render | Contact sheet untuk cek wajah, tangan, tubuh menembus benda, teks, ekor kosong | `references/qc-checklist.md`, `scripts/contact_sheet.sh`, `templates/qc-report.md` |
| 9 Shot berikutnya | Ambil frame sambungan di titik potong edit | `references/continuity.md`, `scripts/cut_frame.sh` |
| 10 Pasca & rilis | Potong ekor, matikan musik dari model, subtitle tanpa tanda baca, sampul 9:16, label konten AI | `references/post-production.md`, `references/domestic.md` (label AI) |

Memilih platform: `references/platform-comparison.md`. Sumber: `references/sources.md`.

## 2. Sebelas aturan wajib (setiap prompt harus lolos)

1. **Beat per detik**: detik bulat, bersambung, tanpa celah (`0-2s / 2-7s / 7-10s`). Satu kejadian utama per beat.
2. **Gambarkan hanya frame saat ini**: model tidak pernah melihat versi sebelumnya. Jangan tulis still, as before, again, "revisi", "sama seperti tadi". Keadaan yang berlanjut ditulis dalam bentuk sekarang ("Cole duduk di bak belakang truk").
3. **Wajah hanya dari potret referensi asli yang sudah dikunci**: jangan pernah memakai frame dari video hasil generate sebagai referensi wajah. Frame sambungan hanya mengatur sisi kamera, ukuran shot, posisi pemain, dan cahaya.
4. **Sebutkan fungsi tiap referensi dan apa yang tidak boleh ia atur**: `Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`.
5. **Larangan dikumpulkan, singkat, ditulis FORBIDDEN / "no …"**, bukan "avoid". Hal visual yang bisa ditulis sebagai keadaan positif, tulis begitu ("kusen pintu dan keempat orang tetap di dalam frame").
6. **Dialog ditaruh tepat di detik terjadinya**, kata per kata, dengan nama pembicara dan deskripsi suara; tulis "hanya X yang bicara", dan untuk karakter yang diam `mouth stays closed, no lip movement`.
7. **Setiap aksi butuh alasan**: tanpa gestur simbolis kentara (mengantongi uang, menunjuk bangku, menatap lensa), tempo rapat, tanpa tatapan diam yang lama di akhir.
8. **Setiap shot baru menyambung dari ukuran dan posisi shot sebelumnya**: sisi kamera sama, posisi sama, kecuali naskah jelas berganti adegan.
9. **Tanpa subtitle, tanpa watermark, tanpa musik latar**: sebut sekali di awal dan sekali di akhir; teks yang tidak perlu di frame ditulis "no lettering, no logos".
10. **Jangan mengarang angka**: harga, batas, dan kredit disertai sumber dan tanggal; kalau tidak tahu, tulis "belum diuji".
11. **Kualitas diminta sesuai adegan**: sebut hanya tekstur halus yang benar-benar ada di shot ini (luar ruang: batu, air, daun, gunung di kejauhan; dalam ruang: kain, serat kayu, kulit, rambut) dan minta "sharp fine detail, no blocky or grid-like compression artifacts" (detail halus yang tajam, tanpa artefak kompresi berbentuk blok atau kisi). Jangan pakai kata kualitas serba-bisa, dan jangan sebut yang tidak ada di frame.

## 3. Format keluaran

- Sebelum setiap prompt, **tabel ringkasan beat** (tidak ditempel ke platform): detik / ukuran shot & kamera / aksi / dialog / suara.
- Isi prompt di blok kode tersendiri, dengan jumlah karakter (`wc -m`) dan batas platform.
- Daftar urutan unggah referensi: `Image 1 = potret karakter A` …
- Jelaskan cara memperkirakan biaya (tampilan platform yang berlaku); jangan pernah mengirim pekerjaan berbayar tanpa konfirmasi pengguna.

## 4. Jangan

- Jangan menekan tombol generate atas nama pengguna, membeli kredit, atau membatalkan pekerjaan berbayar yang sudah dikirim.
- Jangan memasukkan nama orang sungguhan, merek, atau akun ke prompt.
- Jangan menjanjikan kemampuan yang belum diumumkan platform.
