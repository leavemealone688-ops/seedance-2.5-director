# 템플릿: 중국 플랫폼용 단일 프롬프트 (샤오윈췌 / LibTV / 지멍)

## A. 비트 요약 (사람이 보는 용도, 플랫폼에 붙여 넣지 않음)

| 항목 | 내용 |
|---|---|
| 컷 | EPxx_Syy_v1 |
| 플랫폼 / 설정 | 샤오윈췌 · Seedance 2.5 · 参考生成 · 9:16 · 10s · 720P |
| 레퍼런스 순서 | 图片1 = 인물 A 기준 이미지 / 图片2 = 인물 B 기준 이미지 / 图片3 = 소품 또는 장소 / 图片4 = 앞 컷 연결 프레임 |
| 시작 지점 | 앞 컷 x.x초 |
| 0-2s | |
| 2-7s | |
| 7-10s | |
| 대사 | 인물 A: "……" |
| 예상 비용 | 결제 확인 화면 기준, 승인 대기 □ |

## B. 중국어 본문 (플랫폼에 붙여 넣기, 중국어 드라마는 중국어로)

```
【参考】@图片1 是<角色A称呼>：脸、<发型>、<服装>、<配饰>严格按此图，不戴<禁止饰品>。@图片2 是<角色B称呼>：……严格按此图。@图片3 是<道具/场景>：<哪些部分>按此图。@图片4 只是上一镜头结尾画面：只取机位一侧、景别、站位和<光色>，不取任何人脸、招牌和文字。
竖屏 9:16，写实电影质感，10 秒，一镜到底。<地点>，<时间与光色，色温>。全程只有<角色A>和<角色B>出现，不要其他人。
开场构图与 @图片4 完全一致：<角色A>在画面<左/右>，<姿态>；<角色B>在<位置>，<姿态>。
0-2秒：<景别机位>。<一个动作>。<结束时可见状态>。
2-7秒：<角色A><动作>，看着<角色B>，用普通话说："<逐字台词>"声线：<年龄性别音色情绪语速>。口型同步。只有<角色A>说话，<角色B>嘴闭着。
7-10秒：<角色B>的小反应：<可见动作链>。自然克制，不做夸张表演，不留长时间对视。
贯穿：<光色>全程保持；<这一镜实际有的细纹理>细节清晰锐利，没有块状或网格状压缩伪影；镜头只<一个运镜>；手指自然五根；人物不看镜头。
环境音：<具体环境声>。
只有指定角色说话，其他人不说话。原生环境音效照实生成，不要背景音乐，不要配乐，不要字幕，不要任何文字水印。
```

## C. 영어 본문 (영어 드라마용)

```
Vertical 9:16 cinematic realistic drama, photorealistic, 10 seconds. Image 1 is <name A>: same face, same <hair>, same <wardrobe>, same <accessories>; no <forbidden items>. Image 2 is <name B>: same face, …. Image 3 is <prop/animal/location>: …. Image 4 is only a continuity frame from the end of the previous shot: use it for the same camera side, the same <framing> and distance, the same <light>, and the same positions of <people>; do not copy any faces, signs, logos or lettering from Image 4. Only these <N> people appear.

The shot MUST open in the same framing and space as Image 4. <A> sits/stands <exact position>; <B> <exact position>. <Location, light with Kelvin value>. <Blank-signage line if needed>.

One continuous shot, no idle pauses, brisk natural pacing. 0-2s: <one action>. 2-7s: <A> looks at <B> and speaks in <voice description>, at a natural pace: "<exact line>" Precise lip sync. Only <A> speaks; <B>'s mouth stays closed. 7-10s: <B> <small visible reaction chain>; subtle, understated, no long staring hold. Camera: <one move>. Natural hands with five fingers. Sharp, fine detail in <the fine textures actually in this shot>; no blocky or grid-like compression artifacts. Sound: <ambience>, no music, no piano, no score. No text on screen, no subtitles, no watermark.
```

## D. 한국어 대사 드라마

본문은 영어(C)나 중국어(B)로 쓰고, 대사 앞에 "dialogue is native Korean voice, only the Korean lines written below"를 붙이고 대사만 한국어로 넣습니다(`../references/dialogue-audio.md`).

확인: 5000자 이하(샤오윈췌). still / as before 없음. "음악 없음"을 두 번. 레퍼런스 번호가 업로드 순서와 일치.
