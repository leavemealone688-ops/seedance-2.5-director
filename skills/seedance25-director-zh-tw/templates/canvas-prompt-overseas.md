# 模板：海外畫布提示詞（Vigloo Studio / TapNow / Higgsfield）

## A. 掛載清單（給人看）

| 槽位 | 內容 | 備註 |
|---|---|---|
| @角色A / @角色B | Character 節點（Vigloo） | 不在文字裡寫長相 |
| @image1 | 場景主圖（空場，無人） | 寫實人臉不能出現在上傳圖裡（Vigloo） |
| @image2 | 道具 / 場景區域性 | |
| @audio1 | 某角色 3-5 秒乾淨錄音 | 只鎖該角色音色 |
| {{Video}} | 上一條已透過的影片（TapNow 續拍） | 不掛廢片 |
| 時長 / 畫幅 / 解析度 | 例：20s · 9:16 · 720p · 音訊開 | |
| 預計花費 | 按 Generate 按鈕顯示；等待確認 □ | |

## B. Vigloo 風格正文（中文寫，chip 指代）

```
生成一段 <N> 秒的獨立鏡頭。豎屏 9:16，720p。<地點與時間>：空間、<關鍵錨點>一律按 @image1。<道具>按 @image2，全程只有這一個。全程只有 @<角色A> 和 @<角色B> 出現在畫面裡，不要出現其他人。真人實拍的<型別>劇集質感，全程寫實，不做 3D，不做動畫。<光線：只用場景原有實用光>。人物視線落在目標上，不看鏡頭；只有正在說話的角色動嘴。對白由模型原生生成<語言>人聲，只許下面寫出的句子。手都在中景裡完成，不做手指特寫。不要新增任何文字、品牌或標識。<這一鏡實際有的細紋理>細節清晰銳利，沒有塊狀或網格狀壓縮偽影。<兩者之間始終留出空當，沒有身體接觸>。

0–4 秒：@<角色A> <景別機位>。<動作>。<語氣>說：「<臺詞>」只有 @<角色A> 說話。
4–8 秒：<景別機位>。<動作，方向寫死並帶否定>。沒有人說話。
8–12 秒：……
12–16 秒：……聲音按 @audio1 ……畫面裡沒有任何人張嘴。
16–20 秒：……最後半秒畫面靜止。

只有指定角色說話，其他人不說話。原生環境音效照實生成，不要背景音樂，不要配樂，不要字幕，不要任何文字水印。
```
注意：`@` 前留空格；`@` 選單隻列出已連線節點；不重新整理畫布。

## C. TapNow / Higgsfield 風格正文（英文，純 ASCII，建議 ≤ 2000 字元）

```
{{Image 1}} is the start frame: it locks composition, positions and props. {{Image 2}} is <name A>: same face, hair, wardrobe. {{Audio 1}} is only <name A>'s voice timbre.
<N> seconds, 16:9, one continuous take in <location>, a single slow push-in.
0-3s: <one action>. End state: <visible state>.
3-7s: <name A> says: "<line>" Others keep their mouths closed. End state: ...
7-10s: the camera glides forward about 40 cm on a track, frame edges closing in continuously; everyone stays in frame. End state: camera locked closer.
10-14s: ...
Throughout: <persistent items>. Sharp, fine detail in <the fine textures actually in this shot>; no blocky or grid-like compression artifacts. No subtitles. No music, no BGM, no score. Only the written dialogue plus <ambience>.
```
Higgsfield 網頁端如不支援 `{{}}` chip，改寫成 `Image 1 is …`（按上傳順序）。
