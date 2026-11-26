---
name: seedance25-director-ko
description: (한국어) Seedance 2.5 영상 프롬프트, 콘티(스토리보드), 촬영용 대본 작성. Seedance 2.5 단일 프롬프트(4~30초) 작성·수정, 대본을 컷과 초 단위 비트로 쪼개기, 캐릭터·공간·소품·조명 일관성, 컷 연결, 세로형 숏드라마 훅, 대사·립싱크, 심의 반려 회피, 결과물 QC와 후반 작업에 사용. 중국 플랫폼(샤오윈췌 小云雀, LibTV, 지멍 即梦)과 해외 플랫폼(Vigloo Studio, TapNow, Higgsfield)을 나눠 다룸.
---

# Seedance 2.5 프롬프트 · 콘티 · 대본

대본부터 바로 제출할 수 있는 프롬프트까지 이어지는 전체 파이프라인입니다. 실제 숏드라마와 예고편 제작에서 정리했습니다. 우선순위: **플랫폼 하드 제한 > 이 팩의 규칙 > 개인 취향**.

## 0. 먼저 세 가지를 정한다

1. **어느 플랫폼인가**: 중국(샤오윈췌 小云雀 / LibTV / 지멍 即梦) → `references/domestic.md`, 해외 캔버스(Vigloo Studio / TapNow / Higgsfield) → `references/overseas.md`. 레퍼런스 표기법, 실사 얼굴 정책, 과금이 다르니 섞어 쓰지 않습니다.
2. **납품 형태**: 세로 9:16 숏드라마인가, 16:9 단편·예고편인가? `references/formats-and-budget.md`.
3. **요청 내용**: 대본 → 콘티 → 프롬프트 전체인가, 프롬프트 하나 수정인가, 결과물 QC인가? 아래 표에서 해당 단계로 바로 갑니다.

## 1. 작업 흐름

| 단계 | 할 일 | 읽을 문서 |
|---|---|---|
| 1 로그라인·대본 | 한 줄 로그라인, 첫 3초 훅, 찍을 수 있는 회차 대본 | `references/viral-hooks.md`, `references/script-and-storyboard.md`, `templates/episode-script.md` |
| 2 에셋 | 캐릭터 기준 이미지, 공간 메인·리버스 플레이트, 소품 상태를 고정하고 에셋 시트 작성 | `references/character-lock.md`, `references/consistency.md`, `templates/asset-bible.md` |
| 3 콘티 | 4~30초 생성 단위로 나누고 단위마다 초 단위 비트 작성 | `templates/script-to-shots.md`, `templates/storyboard-table.md`, `references/long-takes.md`, `references/action-and-fights.md` |
| 4 프롬프트 | 플랫폼 템플릿으로 작성, 글자 수 확인 | `references/universal-rules.md`, `templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`, `examples/` |
| 5 연기·템포 | 대놓고 상징적인 동작 삭제, 템포 조이기 | `references/acting-and-pacing.md` |
| 6 사운드 | 네이티브 대사, 다국어, 목소리 고정, BGM 금지 | `references/dialogue-audio.md` |
| 7 제출 전 | 심의 위험, 레퍼런스 순서, 화면비, 예산(사용자 승인 대기) | `references/moderation-and-pitfalls.md`, `references/formats-and-budget.md`, `scripts/cost_calc.py` |
| 8 결과물 QC | 컨택트 시트로 얼굴·손·관통·글자·빈 꼬리 확인 | `references/qc-checklist.md`, `scripts/contact_sheet.sh`, `templates/qc-report.md` |
| 9 다음 컷 | 편집 아웃 포인트에서 연결 프레임 추출 | `references/continuity.md`, `scripts/cut_frame.sh` |
| 10 후반·공개 준비 | 꼬리 자르기, 모델 음악 음소거, 문장부호 없는 자막, 9:16 썸네일, AI 표시 | `references/post-production.md`, `references/domestic.md`(AI 콘텐츠 표시) |

플랫폼 선택: `references/platform-comparison.md`. 출처: `references/sources.md`.

## 2. 철칙 11개 (모든 프롬프트가 통과해야 함)

1. **초 단위 비트**: 정수 초, 빈틈없이 이어서(`0-2s / 2-7s / 7-10s`). 비트 하나에 주요 사건 하나.
2. **지금 화면만 묘사**: 모델은 이전 버전을 본 적이 없습니다. still, as before, again, "수정한", "지난번처럼"을 쓰지 않습니다. 이어지는 상태는 현재형으로 씁니다("Cole sits on the tailgate").
3. **얼굴은 고정된 원본 기준 이미지에서만**: 생성된 영상의 프레임을 얼굴 레퍼런스로 쓰지 않습니다. 연결 프레임은 카메라 방향, 사이즈, 동선, 조명만 담당합니다.
4. **레퍼런스마다 용도와 쓰지 말 부분을 명시**: `Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`.
5. **금지 조건은 모아서, 짧게, FORBIDDEN / "no …"로**. "avoid"는 쓰지 않습니다. 시각 요소는 가능하면 긍정 상태로 씁니다("문틀과 네 사람이 끝까지 화면 안에 있다").
6. **대사는 그 일이 일어나는 초에** 한 글자도 바꾸지 않고, 화자와 목소리 묘사를 붙여 넣습니다. "X만 말한다"를 쓰고, 말하지 않는 인물은 `mouth stays closed, no lip movement`.
7. **모든 동작에는 이유가 있어야 한다**: 대놓고 상징적인 동작(돈을 주머니에 넣어 보이기, 벤치를 가리키기, 렌즈 응시) 금지, 템포는 빠르게, 끝에 긴 응시 금지.
8. **새 컷은 이전 컷의 프레이밍과 동선에서 이어 붙인다**: 같은 카메라 쪽, 같은 위치. 대본이 장면을 확실히 바꿀 때만 예외.
9. **자막 없음, 워터마크 없음, 배경음악 없음**을 맨 앞과 맨 끝에 한 번씩. 화면에 필요 없는 글자는 "no lettering, no logos".
10. **숫자를 지어내지 않는다**: 가격·제한·크레딧은 출처와 날짜를 붙이고, 모르면 "미검증"이라고 씁니다.
11. **화질 문구는 장면에 맞게**: 이 컷에 실제로 있는 디테일 질감만 짚습니다(야외라면 바위, 수면, 나뭇잎, 먼 산 / 실내라면 천, 나뭇결, 피부, 머리카락). 그리고 "디테일은 선명하게, 블록·격자 모양 압축 노이즈 없이"를 요구합니다. 만능 화질 키워드나 화면에 없는 것을 늘어놓지 않습니다.

## 3. 출력 형식

- 프롬프트마다 앞에 **비트 요약표**를 붙입니다(플랫폼에는 붙여넣지 않음): 초 / 사이즈·카메라 / 동작 / 대사 / 사운드.
- 프롬프트 본문은 별도 코드 블록에, 글자 수(`wc -m`)와 플랫폼 제한을 함께 적습니다.
- 레퍼런스 업로드 순서: `Image 1 = 캐릭터 A 기준 이미지` …
- 비용 산정 방식을 적습니다(플랫폼 표시가 기준). 사용자 확인 없이 유료 작업을 제출하지 않습니다.

## 4. 하지 않는 것

- 사용자 대신 생성 버튼 누르기, 크레딧 구매, 이미 제출한 유료 작업 취소.
- 프롬프트에 실존 인물 이름, 브랜드, 계정 넣기.
- 플랫폼이 공개하지 않은 기능을 장담하기.
