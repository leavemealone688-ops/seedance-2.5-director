# 연결 컷 (모든 컷은 앞 컷에서 이어진다)

## 원칙

- **새 컷은 앞 컷의 사이즈와 동선에서 이어집니다**: 카메라는 같은 쪽, 사이즈는 비슷하게, 인물은 같은 위치에서 시작한 뒤 새 컷이 앞으로 나아갑니다. 대본이 분명히 장소를 바꾸거나 시간을 건너뛸 때만 예외입니다.
- 연결 프레임은 **편집에서 실제로 살아남는 마지막 프레임**이지, 원본 클립의 마지막 프레임이 아닙니다(원본 꼬리는 보통 잘립니다).
- 연결 프레임은 공간과 색을 고정할 뿐 **얼굴은 고정하지 않습니다**(`character-lock.md`).
- 앞 컷의 인물이 새 컷에서 작은 점처럼 줄어들면 안 됩니다(실제로 겪음: 앞 컷은 미디엄이었는데 새 컷에서 저 멀리 배경에 앉아 있어 이어지지 않았고, 다시 생성했습니다).

## 방법

1. 앞 컷의 아웃 점을 정합니다(예: 6.0초, 그 뒤의 멍한 응시는 자름).
2. 연결 프레임 추출:
   ```bash
   scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
   # 원본 마지막 프레임: scripts/last_frame.sh S02_v2.mp4 S02_v2_last.png
   ```
3. **마지막 레퍼런스 이미지**로 올립니다.
4. 프롬프트 문형:
   ```
   Image 4 is only a continuity frame from the end of the previous shot: use it for the same camera side,
   the same medium framing and distance, the same warm golden light, the same positions of the man, the woman
   and the dog; do not copy any signs, logos, lettering or faces from Image 4.
   The shot MUST open in the same framing and space as Image 4.
   0-2s: open on the same framing as Image 4 — <list each person's position and pose right now>.
   ```
5. "연결 프레임에서 벗어나는" 동작은 처음 1~2초 안에 끝내고, 곧바로 사이즈를 바꾸지 않습니다.

## 연장(Extend) vs 새 클립

| 방법 | 적합한 경우 | 주의 |
|---|---|---|
| 플랫폼 연장 / 이어 생성(`在 @视频1 的基础上续写 N 秒` / "extend @Video 1 by N seconds") | 끊김 없이 흘러야 하는 동작 | 공식 설명과 우리 테스트: 이음매가 거의 튀지 않음. 결과물에 원본이 포함되는 경우가 많고 과금은 플랫폼마다 다름 |
| 새 클립 + 연결 프레임 레퍼런스 | 컷으로 붙일 연결, 사이즈 변경 | 시작이 비슷하리라는 보장이 없음 — 시작 동선을 글로 고정 |
| 첫 프레임 슬롯(first_frame) | 첫 프레임이 정확히 같아야 할 때 | 그 순간의 얼굴 상태까지 화면 전체가 고정됨 |
| TapNow `{{Video}}` | 통과한 클립 이어 가기 | 반려본이 아니라 통과본을 붙일 것 |

## 장소 전환 / 시간 점프

- "하드 타임 컷이며 문을 통과해 밀고 들어가지 않는다"라고 쓰고, 연결 프레임에서는 색이나 날씨만 가져옵니다.
- 새 장소의 첫 컷은 설정 숏(와이드, 공간 기준점이 분명한)으로, 그다음 인물.

## 연결 확인

- 앞 컷 아웃 점 프레임과 새 컷 0프레임을 나란히: 카메라 쪽, 좌우, 색, 소품 위치, 의상 상태.
- 맞지 않으면 새 컷을 다시 생성 — 트랜지션으로 가리지 않습니다.
