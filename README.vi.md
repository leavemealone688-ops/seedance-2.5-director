🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Skill Seedance 2.5: Prompt · Storyboard · Kịch bản**

**Bộ skill sản xuất video với Seedance 2.5** dành cho trợ lý lập trình AI và agent: từ ý tưởng một câu, kịch bản quay được, chia cảnh, đến prompt dán là chạy, QC bản dựng và hậu kỳ. Các quy tắc đến từ việc sản xuất phim ngắn dọc và trailer thực tế, có đối chiếu với hướng dẫn chính thức công khai.

- Hai cách viết: **nền tảng Trung Quốc** (Xiaoyunque, LibTV, Jimeng) và **nền tảng quốc tế** (Vigloo Studio, TapNow, Higgsfield)
- Nhất quán toàn diện: nhân vật, trạng thái trang phục, bố cục bối cảnh, trạng thái đạo cụ, ánh sáng và màu, trục và hướng màn hình, thời tiết, xuyên suốt các tập, đặt tên tài nguyên
- Cấu trúc viral: hook 3 giây, nhịp giữ chân, cú twist và trả thưởng, hook cuối tập, ảnh bìa và tiêu đề, cải thiện bằng số liệu của chính bạn
- Mẫu + ví dụ + script (contact sheet, khung nối, đếm ký tự, ước tính ngân sách)
- Có 14 ngôn ngữ

> Giá, giới hạn và tính năng của nền tảng có thể đổi bất cứ lúc nào. Mọi con số đều có nguồn và ngày (tính đến 2026-11): **hãy kiểm tra trên nền tảng trước khi dùng**. Những gì chúng tôi chưa thử được ghi "chưa kiểm chứng".

> Bản tiếng Việt: README và SKILL.md bằng tiếng Việt; `references/`, `templates/` và `examples/` tạm thời vẫn là tiếng Anh.

## Skill này giúp gì cho nhà sáng tạo

Những vấn đề hằng ngày khi làm phim AI bằng Seedance 2.5, và điều thay đổi khi trợ lý của bạn làm theo skill này. Các ví dụ là đoạn trích ngắn theo cách viết prompt mà skill hướng dẫn.

### 1. Từ ý tưởng một câu thành prompt từng cảnh sẵn sàng tạo

**Trước**
```text
An old woman comforts a man whose dog is sick.
```
**Sau**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. Khuôn mặt, trang phục, bối cảnh, đạo cụ giữ nguyên giữa các cảnh và các tập

**Trước**
```text
Same woman as before, same clothes.
```
**Sau**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. Mỗi cảnh nối mượt từ cảnh trước

**Trước**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**Sau**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. Giữ chân người xem trong 3 giây, xem đến hết, mỗi tập kết bằng một nút thắt

**Trước**
```text
0-3s: slow aerial shot of the city at dusk.
```
**Sau**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. Thoại, khẩu hình và giọng không bị lẫn sang nhân vật khác

**Trước**
```text
Lines listed at the end. "Her lips part."
```
**Sau**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. Ít bản bị từ chối hay bỏ phí hơn, có ngân sách trước khi tiêu credit

**Trước**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**Sau**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. Viết đúng cho nền tảng bạn thật sự dùng (Trung Quốc hay quốc tế)

**Trước**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**Sau**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. Checklist QC và script ffmpeg thay cho xem bằng mắt

**Trước**
```text
Watch it once, notice six fingers after posting.
```
**Sau**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### Dành cho ai

- Nhà sáng tạo phim ngắn dọc cho Douyin, Shorts, Reels hoặc ứng dụng phim ngắn
- Nhà làm phim AI làm phim ngắn, trailer và cảnh quay dài
- Đội thương hiệu và quảng cáo cần nhân vật lặp lại và video đúng quy cách
- Người dự thi cần đáp ứng thời lượng, tỉ lệ khung hình và quy định gắn nhãn

Ở đây không có tỉ lệ thành công bịa ra: skill yêu cầu trợ lý chỉ dùng số liệu và giá thật.

## Ngôn ngữ

Mỗi ngôn ngữ là một thư mục skill hợp lệ, độc lập, với `name` riêng. Chỉ cài ngôn ngữ bạn cần bằng `--lang`.

| Ngôn ngữ | Thư mục | `--lang` | Đã dịch |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | Toàn bộ (SKILL.md, references, templates, ghi chú ví dụ) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | Toàn bộ (SKILL.md, references, templates, ghi chú ví dụ) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | Toàn bộ (SKILL.md, references, templates, ghi chú ví dụ) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | Toàn bộ (SKILL.md, references, templates, ghi chú ví dụ) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md bằng ngôn ngữ này; references / templates / examples tạm thời bằng tiếng Anh |

## Cấu trúc

```
seedance-2.5-director/
├── README.md / README.<lang>.md   tệp này + bản dịch
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               chỉ dẫn cho công cụ đọc AGENTS.md
├── GEMINI.md               ngữ cảnh tiện ích Gemini CLI
├── gemini-extension.json   manifest tiện ích Gemini CLI
├── install.sh              cài vào từng công cụ / tạo zip
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         tiếng Trung giản thể, bản chuẩn
    │   ├── SKILL.md              điểm vào: quy trình + 11 quy tắc sắt
    │   ├── references/           bộ quy tắc (nền tảng, cách viết, nhất quán, hook, QC, hậu kỳ…)
    │   ├── templates/            mẫu prompt / storyboard / kịch bản / tài nguyên / QC
    │   ├── examples/             prompt mẫu lấy từ bản dựng thật
    │   └── scripts/              trích khung bằng ffmpeg, đếm ký tự, ngân sách
    └── seedance25-director-<lang>/  cùng skill ở ngôn ngữ khác
```

## Cài đặt

Cần `bash`; các script còn cần `ffmpeg`/`ffprobe` và `python3`.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # mọi công cụ, mọi ngôn ngữ
./install.sh claude --lang vi          # một công cụ, một ngôn ngữ
./install.sh codex --lang en,vi         # nhiều ngôn ngữ
./install.sh cursor --project /path/to/repo --lang vi   # vào một dự án
./install.sh all --dry-run             # chỉ hiển thị nơi sẽ cài
./install.sh workbuddy-zip --lang vi   # zip để tải lên WorkBuddy
```

Nếu đã có thư mục trùng tên, thư mục đó sẽ được đổi tên để sao lưu. Skill được sao chép, không dùng symlink (một số công cụ bỏ qua symlink). Mẹo: mỗi công cụ chỉ cài một ngôn ngữ; cài cả 14 thì trợ lý sẽ thấy 14 skill gần như giống nhau.

### Ghi chú theo công cụ

| Công cụ | Thư mục người dùng | Thư mục dự án | Trạng thái |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ đã đối chiếu tài liệu chính thức (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (bản cũ đọc `~/.codex/skills/`) | `.agents/skills/` | ✅ đã đối chiếu tài liệu chính thức |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ đã đối chiếu tài liệu chính thức (geminicli.com); `/skills list`, `/skills reload` |
| Tiện ích Gemini CLI | toàn bộ repo (có `gemini-extension.json`, skill nằm trong `skills/`) | — | ✅ đã đối chiếu tài liệu chính thức |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ đã đối chiếu tài liệu chính thức (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ đã đối chiếu tài liệu chính thức (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | ứng dụng: Kỹ năng → Thêm kỹ năng → Tải gói cục bộ lên | — | ⚠️ chưa kiểm chứng: trang chính thức có nhắc nhập gói cục bộ nhưng không nói định dạng; `./install.sh workbuddy-zip` nén thư mục SKILL.md, chưa thử nhập |

Sau khi cài: trong **Claude Code** gõ `/seedance25-director-vi` (hoặc chỉ cần mô tả việc cần làm); trong **Codex** `$seedance25-director-vi` hoặc `/skills`; trong **Gemini CLI** kiểm tra bằng `/skills list`; trong **Cursor** gõ `/` trong khung chat Agent rồi tìm `seedance25`; trong **CodeBuddy** mở `/skills`.

### Chỉ đọc quy tắc

Bắt đầu từ `skills/seedance25-director-vi/SKILL.md` và theo bảng quy trình đến các tệp bạn cần.

## Bắt đầu nhanh

1. Cho trợ lý biết nền tảng (vd. Xiaoyunque 9:16 10s), cốt truyện và ảnh tham chiếu nhân vật.
2. Theo `SKILL.md`, trợ lý trả về: bảng nhịp → thứ tự tải tham chiếu → thân prompt (kèm số ký tự) → ngân sách.
3. Bạn xác nhận rồi tự gửi trên nền tảng (skill không bao giờ gửi tác vụ trả phí thay bạn).
4. Sau khi có video, nhờ chạy `scripts/contact_sheet.sh` để QC, rồi `scripts/cut_frame.sh` để lấy khung nối cho cảnh tiếp theo.

## Nguyên tắc

1. Mỗi lần tạo đều tốn tiền: báo thông số và ngân sách trước, chỉ gửi sau khi được xác nhận.
2. Khuôn mặt chỉ lấy từ ảnh tham chiếu gốc; khung nối chỉ quyết định máy quay, vị trí và màu.
3. Mỗi cảnh nối từ cỡ cảnh và vị trí của cảnh trước.
4. Diễn tự nhiên, nhịp gọn, không cử chỉ tượng trưng lộ liễu.
5. Yêu cầu chi tiết sắc nét ở những chất liệu thật sự có trong cảnh, không có nhiễu nén dạng khối hay lưới.
6. Tắt nhạc do mô hình thêm ở hậu kỳ, cắt đuôi thừa, phụ đề in cứng không dấu câu, ảnh bìa 9:16.
7. Không bịa số liệu; không biết thì ghi "chưa kiểm chứng". Không để tài khoản, mật khẩu, email hay khóa trong repo.

## Đóng góp

- Kết quả thử mới: ghi nền tảng, ngày và thông số; cập nhật `references/*.md` tương ứng và bảng giá trong `scripts/cost_calc.py`.
- Sửa bản chuẩn `skills/seedance25-director/` trước, rồi đến các thư mục ngôn ngữ. `AGENTS.md` và `GEMINI.md` chỉ là chỉ dẫn.

## Giấy phép

Cấp phép theo [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (Ghi công - Phi thương mại): tự do dùng, chỉnh sửa và chia sẻ khi ghi công; không dùng cho mục đích thương mại.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
