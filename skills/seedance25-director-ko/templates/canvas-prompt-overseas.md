# 템플릿: 해외 캔버스 프롬프트 (Vigloo Studio / TapNow / Higgsfield)

## A. 첨부 목록 (사람이 보는 용도)

| 슬롯 | 내용 | 메모 |
|---|---|---|
| @CharacterA / @CharacterB | Character 노드(Vigloo) | 외모를 글로 묘사하지 않음 |
| @image1 | 메인 장소 플레이트(비어 있음, 사람 없음) | 업로드에 실사 얼굴 금지(Vigloo) |
| @image2 | 소품 / 장소 디테일 | |
| @audio1 | 한 인물의 깨끗한 3~5초 녹음 | 그 인물의 목소리만 고정 |
| {{Video}} | 이전에 통과한 클립(TapNow 이어 찍기) | 반려본은 절대 안 됨 |
| 길이 / 화면비 / 해상도 | 예: 20s · 9:16 · 720p · 오디오 켬 | |
| 예상 비용 | Generate 버튼 기준, 승인 대기 □ | |

## B. Vigloo 스타일 (레퍼런스는 칩으로, 본문은 중국어·한국어·영어 가능)

```
Generate one standalone <N>-second shot. Vertical 9:16, 720p. <Location and time>: the space and <key anchors> follow @image1. <Prop> follows @image2; there is only this one. Only @<CharacterA> and @<CharacterB> appear; no one else. Live-action <genre> series look, fully photoreal, not 3D, not animation. <Light: only the practical lights in the set>. Eyelines land on their targets, never the lens; only the speaking character moves their lips. Dialogue is native <language> voice, only the lines written below. Hands stay in medium shots, no finger close-ups. No added text, brands or logos. Sharp, fine detail in <the fine textures actually in this shot>; no blocky or grid-like compression artifacts. <A gap always remains between them, no body contact.>

0-4s: @<CharacterA> <framing & camera>. <action>. Says, <tone>: "<line>" Only @<CharacterA> speaks.
4-8s: <framing & camera>. <action, direction locked with a negation>. No one speaks.
8-12s: …
12-16s: … voice per @audio1 … no one in frame opens their mouth.
16-20s: … the frame holds still for the last half second.

Only the named characters speak. Native ambience as written, no background music, no score, no subtitles, no text or watermark.
```
메모: `@` 앞에 공백. `@` 메뉴에는 연결된 노드만 뜸. 캔버스를 새로고침하지 않음.

한국어 본문 예시(일부):
```
<N>초짜리 독립된 컷 하나를 생성한다. 세로 9:16, 720p. <장소와 시간>: 공간과 <핵심 기준점>은 @image1을 따른다. <소품>은 @image2를 따르며 이것 하나뿐이다. @<CharacterA>와 @<CharacterB>만 등장하고 다른 사람은 없다. 실사 <장르> 드라마 질감, 완전한 실사, 3D 아님, 애니메이션 아님. <조명: 세트 안 실제 조명만>. 시선은 대상에게, 렌즈를 보지 않는다. 말하는 인물만 입을 움직인다. 대사는 네이티브 한국어 음성, 아래 적힌 대사만. <이 컷에 실제로 있는 잔 질감>의 디테일은 선명하게, 블록·격자 모양 압축 노이즈 없이.

0-4s: @<CharacterA> <사이즈와 카메라>. <동작>. <말투>로 말한다: "<대사>" @<CharacterA>만 말한다.
…
16-20s: … 마지막 0.5초는 화면이 멈춘다.

只有指定角色说话，其他人不说话。原生环境音效照实生成，不要背景音乐，不要配乐，不要字幕，不要任何文字水印。
```

## C. TapNow / Higgsfield 스타일 (영어, 순수 ASCII, 가능하면 2000자 이하)

```
{{Image 1}} is the start frame: it locks composition, positions and props. {{Image 2}} is <name A>: same face, hair, wardrobe. {{Audio 1}} is only <name A>'s voice timbre.
<N> seconds, 16:9, one continuous take in <location>, a single slow push-in.
0-3s: <one action>. End state: <visible state>.
3-7s: <name A> says: "<line>" Others keep their mouths closed. End state: ...
7-10s: the camera glides forward about 40 cm on a track, frame edges closing in continuously; everyone stays in frame. End state: camera locked closer.
10-14s: ...
Throughout: <persistent items>. Sharp, fine detail in <the fine textures actually in this shot>; no blocky or grid-like compression artifacts. No subtitles. No music, no BGM, no score. Only the written dialogue plus <ambience>.
```
Higgsfield 웹앱이 `{{}}` 칩을 지원하지 않으면 `Image 1 is …`(업로드 순서)로 씁니다.
