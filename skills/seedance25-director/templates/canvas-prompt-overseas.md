# 模板：海外画布提示词（Vigloo Studio / TapNow / Higgsfield）

## A. 挂载清单（给人看）

| 槽位 | 内容 | 备注 |
|---|---|---|
| @角色A / @角色B | Character 节点（Vigloo） | 不在文字里写长相 |
| @image1 | 场景主图（空场，无人） | 写实人脸不能出现在上传图里（Vigloo） |
| @image2 | 道具 / 场景局部 | |
| @audio1 | 某角色 3-5 秒干净录音 | 只锁该角色音色 |
| {{Video}} | 上一条已通过的视频（TapNow 续拍） | 不挂废片 |
| 时长 / 画幅 / 分辨率 | 例：20s · 9:16 · 720p · 音频开 | |
| 预计花费 | 按 Generate 按钮显示；等待确认 □ | |

## B. Vigloo 风格正文（中文写，chip 指代）

```
生成一段 <N> 秒的独立镜头。竖屏 9:16，720p。<地点与时间>：空间、<关键锚点>一律按 @image1。<道具>按 @image2，全程只有这一个。全程只有 @<角色A> 和 @<角色B> 出现在画面里，不要出现其他人。真人实拍的<类型>剧集质感，全程写实，不做 3D，不做动画。<光线：只用场景原有实用光>。人物视线落在目标上，不看镜头；只有正在说话的角色动嘴。对白由模型原生生成<语言>人声，只许下面写出的句子。手都在中景里完成，不做手指特写。不要新增任何文字、品牌或标识。<这一镜实际有的细纹理>细节清晰锐利，没有块状或网格状压缩伪影。<两者之间始终留出空当，没有身体接触>。

0–4 秒：@<角色A> <景别机位>。<动作>。<语气>说：「<台词>」只有 @<角色A> 说话。
4–8 秒：<景别机位>。<动作，方向写死并带否定>。没有人说话。
8–12 秒：……
12–16 秒：……声音按 @audio1 ……画面里没有任何人张嘴。
16–20 秒：……最后半秒画面静止。

只有指定角色说话，其他人不说话。原生环境音效照实生成，不要背景音乐，不要配乐，不要字幕，不要任何文字水印。
```
注意：`@` 前留空格；`@` 菜单只列出已连线节点；不刷新画布。

## C. TapNow / Higgsfield 风格正文（英文，纯 ASCII，建议 ≤ 2000 字符）

```
{{Image 1}} is the start frame: it locks composition, positions and props. {{Image 2}} is <name A>: same face, hair, wardrobe. {{Audio 1}} is only <name A>'s voice timbre.
<N> seconds, 16:9, one continuous take in <location>, a single slow push-in.
0-3s: <one action>. End state: <visible state>.
3-7s: <name A> says: "<line>" Others keep their mouths closed. End state: ...
7-10s: the camera glides forward about 40 cm on a track, frame edges closing in continuously; everyone stays in frame. End state: camera locked closer.
10-14s: ...
Throughout: <persistent items>. Sharp, fine detail in <the fine textures actually in this shot>; no blocky or grid-like compression artifacts. No subtitles. No music, no BGM, no score. Only the written dialogue plus <ambience>.
```
Higgsfield 网页端如不支持 `{{}}` chip，改写成 `Image 1 is …`（按上传顺序）。
