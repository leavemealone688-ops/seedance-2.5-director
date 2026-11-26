🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Seedance 2.5 프롬프트 · 콘티 · 대본 Skill**

AI 코딩 어시스턴트와 에이전트를 위한 **Seedance 2.5 영상 제작 스킬 팩**입니다. 한 줄 기획과 촬영 가능한 대본, 콘티 분할부터 바로 붙여 넣을 수 있는 프롬프트, 결과물 QC, 후반 작업까지 다룹니다. 규칙은 실제 세로형 숏드라마와 예고편 제작에서 나왔고, 공개된 공식 가이드와 대조했습니다.

- **중국 플랫폼**(샤오윈췌, LibTV, 지멍)과 **해외 플랫폼**(Vigloo Studio, TapNow, Higgsfield) 두 가지 작성법
- 전방위 일관성: 인물, 의상 상태, 공간 배치, 소품 상태, 조명과 색, 이미지너리 라인과 화면 방향, 날씨, 회차 간 연결, 에셋 이름 규칙
- 터지는 구조: 3초 훅, 유지율 리듬, 반전과 회수, 회차 엔딩 훅, 썸네일과 제목, 자체 데이터로 개선
- 템플릿 + 예시 + 스크립트(컨택트 시트, 연결 프레임, 글자 수, 예산 추정)
- 14개 언어 지원

> 플랫폼 가격, 상한, 기능은 언제든 바뀝니다. 모든 숫자에는 출처와 날짜(2026-11 기준)를 달았으니 **쓰기 전에 플랫폼에서 확인하세요**. 직접 테스트하지 않은 건 "미검증"으로 표시했습니다.

## 이 스킬이 크리에이터에게 해 주는 일

Seedance 2.5로 AI 드라마를 만들 때 매일 부딪히는 문제와, 어시스턴트가 이 스킬을 따를 때 달라지는 점입니다. 예시는 스킬이 알려 주는 프롬프트 작성법의 짧은 발췌입니다.

### 1. 한 줄 아이디어 → 바로 생성할 수 있는 컷별 프롬프트

**이전**
```text
An old woman comforts a man whose dog is sick.
```
**이후**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. 컷과 회차가 바뀌어도 얼굴, 의상, 장소, 소품이 그대로

**이전**
```text
Same woman as before, same clothes.
```
**이후**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. 모든 컷이 앞 컷에서 자연스럽게 이어짐

**이전**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**이후**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. 3초 안에 붙잡고, 끝까지 보게 하고, 회차마다 다음 화가 궁금하게

**이전**
```text
0-3s: slow aerial shot of the city at dusk.
```
**이후**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. 대사, 립싱크, 목소리가 엉뚱한 인물에게 가지 않게

**이전**
```text
Lines listed at the end. "Her lips part."
```
**이후**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. 반려와 버리는 생성을 줄이고, 크레딧을 쓰기 전에 예산부터

**이전**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**이후**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. 실제로 쓰는 플랫폼에 맞춰 쓰기(중국 vs 해외)

**이전**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**이후**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. 눈대중 대신 QC 체크리스트와 ffmpeg 스크립트

**이전**
```text
Watch it once, notice six fingers after posting.
```
**이후**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### 이런 분께

- 더우인, Shorts, Reels, 숏드라마 앱용 세로형 시리즈를 만드는 숏드라마 크리에이터
- 단편, 예고편, 롱테이크를 만드는 AI 영화 제작자
- 같은 캐릭터를 반복해서 쓰고 규격대로 납품해야 하는 브랜드·광고 팀
- 길이, 화면비, AI 표시 규정을 맞춰야 하는 공모전 참가자

지어낸 성공률은 없습니다. 이 스킬은 어시스턴트가 실제 데이터와 실제 플랫폼 가격만 쓰도록 합니다.

## 언어 버전

언어마다 독립된 정식 스킬 폴더이고 `name`이 서로 겹치지 않습니다. `--lang`으로 필요한 언어만 설치하세요. 스킬 이름은 `seedance25-director[-<언어>]`(점 없음)입니다. 스킬 이름에는 소문자, 숫자, 하이픈만 쓸 수 있기 때문입니다.

| 언어 | 폴더 | `--lang` | 번역 범위 |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | 전체(SKILL.md, references, templates, 예시 설명) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | 전체(SKILL.md, references, templates, 예시 설명) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | 전체(SKILL.md, references, templates, 예시 설명) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | 전체(SKILL.md, references, templates, 예시 설명) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md는 해당 언어, references / templates / examples는 당분간 영어 |

## 구성

```
seedance-2.5-director/
├── README.md / README.<lang>.md   이 파일 + 번역본
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               AGENTS.md를 읽는 도구용 안내
├── GEMINI.md               Gemini CLI 확장 컨텍스트
├── gemini-extension.json   Gemini CLI 확장 매니페스트
├── install.sh              각 도구에 설치 / zip 만들기
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         중국어 간체, 기준 버전
    │   ├── SKILL.md              시작점: 작업 흐름 + 철칙 11개
    │   ├── references/           규칙 문서(플랫폼, 작성법, 일관성, 훅, QC, 후반…)
    │   ├── templates/            프롬프트 / 콘티 / 대본 / 에셋 / QC 템플릿
    │   ├── examples/             실제 생성 기록에서 다듬은 예시 프롬프트
    │   └── scripts/              ffmpeg 프레임 추출, 글자 수, 예산 추정
    └── seedance25-director-<lang>/  같은 스킬의 다른 언어 버전
```

## 설치

`bash`가 필요하고, 스크립트를 쓰려면 `ffmpeg`/`ffprobe`와 `python3`도 필요합니다.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # 모든 도구, 모든 언어
./install.sh claude --lang ko          # 도구 하나, 언어 하나
./install.sh codex --lang en,ko         # 여러 언어
./install.sh cursor --project /path/to/repo --lang ko   # 특정 프로젝트에 설치
./install.sh all --dry-run             # 어디에 설치될지만 확인
./install.sh workbuddy-zip --lang ko   # WorkBuddy 업로드용 zip
```

같은 이름의 폴더가 있으면 백업용으로 이름을 바꿔 둡니다. 심볼릭 링크가 아니라 복사로 설치합니다(일부 도구는 링크를 건너뜀). 도구마다 한 언어만 설치하는 걸 권합니다. 14개를 다 설치하면 어시스턴트에게 거의 같은 스킬이 14개 보입니다.

### 도구별 안내

| 도구 | 사용자 폴더 | 프로젝트 폴더 | 상태 |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ 공식 문서로 확인 (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (구버전은 `~/.codex/skills/`) | `.agents/skills/` | ✅ 공식 문서로 확인 |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ 공식 문서로 확인 (geminicli.com); `/skills list`, `/skills reload` |
| Gemini CLI 확장 | 저장소 전체(`gemini-extension.json` 포함, 스킬은 `skills/` 아래) | — | ✅ 공식 문서로 확인 |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ 공식 문서로 확인 (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ 공식 문서로 확인 (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | 클라이언트: 스킬 → 스킬 추가 → 로컬 스킬 패키지 업로드 | — | ⚠️ 미검증: 공식 페이지에 로컬 스킬 패키지 가져오기는 있지만 형식은 없음. `./install.sh workbuddy-zip`은 SKILL.md 폴더를 zip으로 묶을 뿐, 가져오기는 테스트하지 않음 |

설치 후: **Claude Code**는 `/seedance25-director-ko` 입력(또는 그냥 작업을 설명), **Codex**는 `$seedance25-director-ko` 또는 `/skills`, **Gemini CLI**는 `/skills list`로 확인, **Cursor**는 Agent 대화에서 `/` 입력 후 `seedance25` 검색, **CodeBuddy**는 `/skills`.

### 설치 없이 규칙만 읽기

`skills/seedance25-director-ko/SKILL.md`부터 읽고, 그 안의 작업 흐름 표를 따라 필요한 파일로 이동하세요.

## 빠른 시작

1. 어시스턴트에게 플랫폼(예: 샤오윈췌 9:16 10s), 줄거리, 캐릭터 기준 이미지를 알려 줍니다.
2. `SKILL.md` 흐름에 따라 비트표 → 레퍼런스 업로드 순서 → 프롬프트 본문(글자 수 표시) → 예산을 받습니다.
3. 확인한 뒤 플랫폼에서 직접 제출합니다(이 스킬은 유료 작업을 대신 제출하지 않습니다).
4. 결과가 나오면 `scripts/contact_sheet.sh`로 QC를 하고, `scripts/cut_frame.sh`로 연결 프레임을 뽑아 다음 컷을 씁니다.

## 원칙

1. 생성할 때마다 돈이 듭니다. 설정과 예산을 먼저 알리고, 확인받은 뒤 제출.
2. 얼굴은 원본 기준 이미지에서만. 연결 프레임은 카메라, 동선, 색만 고정.
3. 모든 컷은 앞 컷의 사이즈와 동선에서 이어짐.
4. 자연스러운 연기, 빠른 호흡, 대놓고 보여 주는 상징적 제스처 없음.
5. 화질은 그 컷에 실제로 있는 질감을 짚어 선명하게, 블록·격자 모양 압축 노이즈 없이.
6. 모델이 넣은 음악은 후반에서 음소거, 죽은 꼬리는 자르고, 하드 자막은 문장부호 없이, 썸네일은 9:16.
7. 숫자는 지어내지 않고, 모르면 "미검증". 저장소에 계정, 비밀번호, 이메일, 키를 두지 않음.

## 기여

- 새로운 테스트 결과는 플랫폼, 날짜, 설정을 적고 해당 `references/*.md`와 `scripts/cost_calc.py`의 단가표를 갱신해 주세요.
- 기준 버전 `skills/seedance25-director/`을 먼저 고치고 언어별 폴더를 맞춥니다. `AGENTS.md`, `GEMINI.md`는 안내만 합니다.

## 라이선스

[CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)(저작자표시-비영리) 라이선스입니다. 출처를 밝히면 자유롭게 사용, 수정, 공유할 수 있고, 상업적 이용은 금지됩니다.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
