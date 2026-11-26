🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Skill de prompts · storyboards · roteiros para Seedance 2.5**

Um **pacote de skills de produção de vídeo com Seedance 2.5** para assistentes de programação com IA e agentes: do pitch de uma linha e do roteiro filmável, passando pela decupagem, até prompts prontos para colar, QC do vídeo gerado e pós-produção. As regras vêm de produções reais de microdramas verticais e trailers, conferidas com os guias oficiais públicos.

- Dois manuais: **plataformas da China** (Xiaoyunque, LibTV, Jimeng) e **plataformas internacionais** (Vigloo Studio, TapNow, Higgsfield)
- Consistência completa: personagens, estado do figurino, layout do cenário, estado dos objetos, luz e cor, eixo e direção de tela, clima, continuidade entre episódios, nomes de assets
- Estrutura viral: ganchos de 3 segundos, ritmo de retenção, viradas e recompensas, gancho de fim de episódio, capas e títulos, melhoria com seus próprios dados
- Templates + exemplos + scripts (folhas de contato, frames de continuidade, contagem de caracteres, orçamento)
- Disponível em 14 idiomas

> Preços, limites e recursos das plataformas mudam a qualquer momento. Todo número tem fonte e data (até 2026-11): **confira na plataforma antes de usar**. O que não testamos está marcado como "não testado".

> Versão em português: README e SKILL.md em português; `references/`, `templates/` e `examples/` por enquanto em inglês.

## O que esta skill faz pelos criadores

Os problemas do dia a dia de fazer dramas com IA no Seedance 2.5, e o que muda quando seu assistente segue esta skill. Os exemplos são trechos curtos do estilo de prompt que ela ensina.

### 1. De uma ideia de uma linha a prompts por plano prontos para gerar

**Antes**
```text
An old woman comforts a man whose dog is sick.
```
**Depois**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. Rostos, figurino, cenários e objetos iguais entre planos e episódios

**Antes**
```text
Same woman as before, same clothes.
```
**Depois**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. Todo plano corta limpo a partir do anterior

**Antes**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**Depois**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. Prender em 3 segundos, segurar a audiência e fechar cada episódio com um gancho

**Antes**
```text
0-3s: slow aerial shot of the city at dusk.
```
**Depois**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. Diálogo, sincronia labial e voz que não trocam de personagem

**Antes**
```text
Lines listed at the end. "Her lips part."
```
**Depois**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. Menos vídeos reprovados ou desperdiçados, e orçamento antes de gastar créditos

**Antes**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**Depois**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. Escrever para a plataforma que você realmente usa (China vs. internacional)

**Antes**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**Depois**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. Checklists de QC e scripts de ffmpeg em vez de olhar no olho

**Antes**
```text
Watch it once, notice six fingers after posting.
```
**Depois**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### Para quem é

- Criadores de microdramas verticais para Douyin, Shorts, Reels ou apps de drama
- Cineastas de IA que fazem curtas, trailers e planos-sequência
- Times de marca e publicidade que precisam de personagens repetíveis e peças no padrão
- Participantes de concursos que precisam cumprir duração, proporção e regras de rotulagem

Nada de taxas de sucesso inventadas: a skill pede ao assistente que use só dados e preços reais.

## Idiomas

Cada idioma é uma pasta de skill válida e independente, com `name` único. Instale só o que precisar com `--lang`.

| Idioma | Pasta | `--lang` | Traduzido |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | Tudo (SKILL.md, references, templates, notas dos exemplos) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | Tudo (SKILL.md, references, templates, notas dos exemplos) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | Tudo (SKILL.md, references, templates, notas dos exemplos) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | Tudo (SKILL.md, references, templates, notas dos exemplos) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md neste idioma; references / templates / examples em inglês por enquanto |

## Estrutura

```
seedance-2.5-director/
├── README.md / README.<lang>.md   este arquivo + traduções
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               ponteiro para ferramentas que leem AGENTS.md
├── GEMINI.md               contexto da extensão do Gemini CLI
├── gemini-extension.json   manifesto da extensão do Gemini CLI
├── install.sh              instala em cada ferramenta / gera zips
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         chinês simplificado, versão de referência
    │   ├── SKILL.md              entrada: fluxo + 11 regras de ferro
    │   ├── references/           manuais (plataformas, escrita, consistência, ganchos, QC, pós…)
    │   ├── templates/            templates de prompt / storyboard / roteiro / assets / QC
    │   ├── examples/             prompts de exemplo adaptados de gerações reais
    │   └── scripts/              frames com ffmpeg, contagem de caracteres, orçamento
    └── seedance25-director-<lang>/  a mesma skill em outro idioma
```

## Instalação

Precisa de `bash`; os scripts também precisam de `ffmpeg`/`ffprobe` e `python3`.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # todas as ferramentas, todos os idiomas
./install.sh claude --lang pt-br          # uma ferramenta, um idioma
./install.sh codex --lang en,pt-br         # vários idiomas
./install.sh cursor --project /path/to/repo --lang pt-br   # dentro de um projeto
./install.sh all --dry-run             # só mostra para onde iria
./install.sh workbuddy-zip --lang pt-br   # zip para upload no WorkBuddy
```

Se já existir uma pasta com o mesmo nome, ela é renomeada como backup. As skills são copiadas, não linkadas (algumas ferramentas ignoram links simbólicos). Dica: instale um idioma por ferramenta; com os 14, o assistente vê 14 skills quase iguais.

### Notas por ferramenta

| Ferramenta | Pasta do usuário | Pasta do projeto | Status |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ conferido na documentação oficial (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (versões antigas leem `~/.codex/skills/`) | `.agents/skills/` | ✅ conferido na documentação oficial |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ conferido na documentação oficial (geminicli.com); `/skills list`, `/skills reload` |
| Extensão do Gemini CLI | o repositório inteiro (tem `gemini-extension.json`, skills em `skills/`) | — | ✅ conferido na documentação oficial |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ conferido na documentação oficial (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ conferido na documentação oficial (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | cliente: Skills → Adicionar skill → Enviar pacote local | — | ⚠️ não testado: a página oficial fala em importar pacote local, mas não diz o formato; `./install.sh workbuddy-zip` compacta a pasta do SKILL.md, importação não testada |

Depois de instalar: no **Claude Code** digite `/seedance25-director-pt-br` (ou só descreva a tarefa); no **Codex** `$seedance25-director-pt-br` ou `/skills`; no **Gemini CLI** confira com `/skills list`; no **Cursor** digite `/` no chat do Agent e busque `seedance25`; no **CodeBuddy** abra `/skills`.

### Só ler as regras

Comece por `skills/seedance25-director-pt-br/SKILL.md` e siga a tabela de fluxo até os arquivos de que precisar.

## Começo rápido

1. Diga ao assistente a plataforma (ex.: Xiaoyunque 9:16 10s), a história e os retratos dos personagens.
2. Seguindo o `SKILL.md`, ele devolve: tabela de beats → ordem de upload das referências → corpo do prompt (com contagem de caracteres) → orçamento.
3. Você confirma e envia na plataforma (a skill nunca envia trabalhos pagos por você).
4. Depois do vídeo, peça `scripts/contact_sheet.sh` para o QC e `scripts/cut_frame.sh` para tirar o frame de continuidade do próximo plano.

## Princípios

1. Toda geração custa dinheiro: informe configurações e orçamento antes, envie só depois da confirmação.
2. Rostos só dos retratos originais; o frame de continuidade controla só câmera, marcação e cor.
3. Todo plano parte do enquadramento e da marcação do anterior.
4. Atuação natural, ritmo enxuto, sem gestos simbólicos óbvios.
5. Peça detalhe nítido nas texturas que realmente estão no plano, sem artefatos de compressão em blocos ou grade.
6. Silencie na pós a música do modelo, corte finais mortos, legendas gravadas sem pontuação, capas 9:16.
7. Nunca invente números; se não souber, "não testado". Nada de contas, senhas, e-mails ou chaves no repositório.

## Contribuir

- Resultados novos: informe plataforma, data e configurações; atualize o `references/*.md` correspondente e a tabela de preços em `scripts/cost_calc.py`.
- Altere primeiro a versão de referência `skills/seedance25-director/` e depois as pastas de idioma. `AGENTS.md` e `GEMINI.md` são só ponteiros.

## Licença

Licenciado sob [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (Atribuição-NãoComercial): livre para usar, adaptar e compartilhar com atribuição; uso comercial proibido.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
