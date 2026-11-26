---
name: seedance25-director-vi
description: (Tiếng Việt) Viết prompt video, storyboard và kịch bản quay được cho Seedance 2.5. Dùng khi viết hoặc sửa một prompt Seedance 2.5 (4-30 giây), chia kịch bản thành cảnh quay với nhịp theo từng giây, giữ nhất quán nhân vật, bối cảnh, đạo cụ và ánh sáng, nối cảnh, hook cho phim ngắn dọc, thoại và khẩu hình, tránh bị kiểm duyệt từ chối, QC bản dựng và hậu kỳ. Hỗ trợ nền tảng Trung Quốc (Xiaoyunque, LibTV, Jimeng) và quốc tế (Vigloo Studio, TapNow, Higgsfield).
---

# Seedance 2.5: Prompt · Storyboard · Kịch bản

Quy trình trọn vẹn từ kịch bản đến prompt sẵn sàng gửi, đúc kết từ việc sản xuất phim ngắn và trailer thực tế. Thứ tự ưu tiên: **giới hạn cứng của nền tảng > quy tắc của gói này > phong cách cá nhân**.

> Trong thư mục này, `references/`, `templates/` và `examples/` vẫn là tiếng Anh (bản dịch tiếng Việt chưa xong). Toàn bộ quy tắc cốt lõi đã được viết bằng tiếng Việt trong SKILL.md này.

## 0. Quyết định ba điều trước

1. **Nền tảng nào**: Trung Quốc (Xiaoyunque 小云雀 / LibTV / Jimeng 即梦) → đọc `references/domestic.md`; canvas quốc tế (Vigloo Studio / TapNow / Higgsfield) → đọc `references/overseas.md`. Cú pháp tham chiếu, chính sách khuôn mặt thật và cách tính phí khác nhau; đừng trộn lẫn.
2. **Định dạng giao**: phim ngắn dọc 9:16, hay phim ngắn / trailer 16:9? Đọc `references/formats-and-budget.md`.
3. **Yêu cầu là gì**: kịch bản → storyboard → prompt, sửa một prompt, hay QC một bản đã dựng? Đi thẳng tới bước tương ứng.

## 1. Quy trình

| Bước | Việc cần làm | Đọc |
|---|---|---|
| 1 Logline & kịch bản | Ý tưởng một câu, hook 3 giây, kịch bản tập quay được | `references/viral-hooks.md`, `references/script-and-storyboard.md`, `templates/episode-script.md` |
| 2 Tài nguyên | Chốt ảnh tham chiếu nhân vật, ảnh nền chính/ngược của bối cảnh, trạng thái đạo cụ; lập bộ tài liệu tài nguyên | `references/character-lock.md`, `references/consistency.md`, `templates/asset-bible.md` |
| 3 Storyboard | Chia thành đơn vị tạo 4-30 giây, mỗi đơn vị có nhịp theo từng giây | `templates/script-to-shots.md`, `templates/storyboard-table.md`, `references/long-takes.md`, `references/action-and-fights.md` |
| 4 Prompt | Dùng mẫu của nền tảng; đếm ký tự | `references/universal-rules.md`, `templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`, `examples/` |
| 5 Diễn xuất & nhịp | Bỏ cử chỉ tượng trưng lộ liễu, siết nhịp | `references/acting-and-pacing.md` |
| 6 Âm thanh | Thoại gốc, thoại đa ngôn ngữ, khóa giọng, không nhạc nền | `references/dialogue-audio.md` |
| 7 Trước khi gửi | Rủi ro kiểm duyệt, thứ tự tham chiếu, tỉ lệ khung hình, ngân sách (chờ người dùng đồng ý) | `references/moderation-and-pitfalls.md`, `references/formats-and-budget.md`, `scripts/cost_calc.py` |
| 8 QC bản dựng | Contact sheet để kiểm tra mặt, tay, cơ thể xuyên vật, chữ, đuôi thừa | `references/qc-checklist.md`, `scripts/contact_sheet.sh`, `templates/qc-report.md` |
| 9 Cảnh tiếp theo | Lấy khung nối tại điểm cắt dựng | `references/continuity.md`, `scripts/cut_frame.sh` |
| 10 Hậu kỳ & phát hành | Cắt đuôi, tắt nhạc do mô hình tự thêm, phụ đề không dấu câu, ảnh bìa 9:16, nhãn nội dung AI | `references/post-production.md`, `references/domestic.md` (nhãn AI) |

Chọn nền tảng: `references/platform-comparison.md`. Nguồn: `references/sources.md`.

## 2. Mười một quy tắc sắt (mọi prompt phải đạt)

1. **Nhịp theo từng giây**: giây nguyên, nối liền, không khoảng trống (`0-2s / 2-7s / 7-10s`). Mỗi nhịp chỉ một việc chính.
2. **Chỉ mô tả khung hình hiện tại**: mô hình chưa từng thấy các phiên bản trước. Không viết still, as before, again, "đã sửa", "giống lần trước". Trạng thái đang tiếp diễn viết ở thì hiện tại ("Cole ngồi trên cửa thùng xe").
3. **Khuôn mặt chỉ lấy từ ảnh tham chiếu gốc đã chốt**: không bao giờ dùng khung hình từ video đã tạo làm tham chiếu mặt. Khung nối chỉ quyết định phía máy quay, cỡ cảnh, vị trí diễn viên và ánh sáng.
4. **Nói rõ mỗi tham chiếu dùng để làm gì và không được quyết định điều gì**: `Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`.
5. **Điều cấm gom lại, ngắn gọn, viết FORBIDDEN / "no …"**, không dùng "avoid". Cái gì nhìn thấy được mà diễn đạt được thành trạng thái khẳng định thì viết như vậy ("khung cửa và cả bốn người luôn ở trong khung hình").
6. **Thoại đặt đúng giây nó xảy ra**, nguyên văn, kèm người nói và mô tả giọng; viết "chỉ X nói", và với nhân vật im lặng `mouth stays closed, no lip movement`.
7. **Mọi hành động cần lý do**: không cử chỉ tượng trưng lộ liễu (nhét tiền vào túi, chỉ vào ghế, nhìn thẳng ống kính), nhịp gọn, không nhìn đờ đẫn kéo dài ở cuối.
8. **Mỗi cảnh mới nối từ cỡ cảnh và vị trí của cảnh trước**: cùng phía máy quay, cùng vị trí, trừ khi kịch bản rõ ràng chuyển cảnh.
9. **Không phụ đề, không watermark, không nhạc nền**: nói một lần ở đầu và một lần ở cuối; chữ không cần trong khung hình viết "no lettering, no logos".
10. **Không bịa số liệu**: giá, giới hạn và credit phải có nguồn và ngày; không biết thì ghi "chưa kiểm chứng".
11. **Yêu cầu chất lượng theo đúng cảnh**: chỉ nêu những chất liệu chi tiết thực sự có trong cảnh này (ngoại cảnh: đá, mặt nước, lá cây, núi xa; nội cảnh: vải, vân gỗ, da, tóc) và yêu cầu "sharp fine detail, no blocky or grid-like compression artifacts" (chi tiết nhỏ sắc nét, không có nhiễu nén dạng khối hay dạng lưới). Không dùng từ khóa chất lượng chung chung, và không liệt kê thứ không có trong khung hình.

## 3. Định dạng đầu ra

- Trước mỗi prompt là **bảng tóm tắt nhịp** (không dán vào nền tảng): giây / cỡ cảnh & máy quay / hành động / thoại / âm thanh.
- Phần thân prompt để trong khối code riêng, kèm số ký tự (`wc -m`) và giới hạn của nền tảng.
- Liệt kê thứ tự tải tham chiếu lên: `Image 1 = ảnh tham chiếu nhân vật A` …
- Ghi cách ước tính chi phí (con số nền tảng hiển thị là chuẩn); không bao giờ gửi tác vụ trả phí khi chưa có xác nhận của người dùng.

## 4. Không được

- Bấm tạo thay người dùng, mua credit, hoặc hủy tác vụ trả phí đã gửi.
- Đưa tên người thật, thương hiệu hoặc tài khoản vào prompt.
- Hứa những tính năng mà nền tảng chưa công bố.
