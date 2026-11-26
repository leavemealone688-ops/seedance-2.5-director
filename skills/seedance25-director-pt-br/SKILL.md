---
name: seedance25-director-pt-br
description: (Português do Brasil) Prompts de vídeo, storyboards e roteiros filmáveis para o Seedance 2.5. Para escrever ou corrigir um prompt do Seedance 2.5 (4-30 s), decupar um roteiro em planos com beats por segundo, manter personagens, cenários, objetos e luz consistentes, continuidade entre planos, ganchos de microdramas verticais, diálogo e sincronia labial, evitar reprovação na moderação, QC e pós. Plataformas da China (Xiaoyunque, LibTV, Jimeng) e internacionais (Vigloo Studio, TapNow, Higgsfield).
---

# Prompts · Storyboards · Roteiros para Seedance 2.5

Um fluxo completo do roteiro ao prompt pronto para enviar, tirado de produções reais de microdramas e trailers. Prioridade: **limites da plataforma > regras deste pacote > estilo pessoal**.

> Nesta pasta, `references/`, `templates/` e `examples/` estão em inglês (tradução para o português pendente). Todas as regras essenciais estão em português neste SKILL.md.

## 0. Decida três coisas primeiro

1. **Qual plataforma**: China (Xiaoyunque 小云雀 / LibTV / Jimeng 即梦) → leia `references/domestic.md`; canvas internacionais (Vigloo Studio / TapNow / Higgsfield) → leia `references/overseas.md`. Sintaxe de referência, regras sobre rostos reais e cobrança são diferentes; não misture.
2. **Formato de entrega**: microdrama vertical 9:16 ou curta / trailer 16:9? Leia `references/formats-and-budget.md`.
3. **O que foi pedido**: roteiro → storyboard → prompts, corrigir um prompt ou revisar um vídeo já gerado? Vá direto à etapa certa.

## 1. Fluxo de trabalho

| Etapa | O que fazer | Ler |
|---|---|---|
| 1 Logline e roteiro | Pitch de uma linha, gancho de 3 segundos, roteiro filmável do episódio | `references/viral-hooks.md`, `references/script-and-storyboard.md`, `templates/episode-script.md` |
| 2 Assets | Travar retratos de referência dos personagens, planos principal/reverso do cenário, estados dos objetos; montar a bíblia de assets | `references/character-lock.md`, `references/consistency.md`, `templates/asset-bible.md` |
| 3 Storyboard | Dividir em unidades de geração de 4-30 s, cada uma com beats por segundo | `templates/script-to-shots.md`, `templates/storyboard-table.md`, `references/long-takes.md`, `references/action-and-fights.md` |
| 4 Prompt | Usar o template da plataforma; contar caracteres | `references/universal-rules.md`, `templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`, `examples/` |
| 5 Atuação e ritmo | Tirar gestos simbólicos óbvios demais, enxugar o ritmo | `references/acting-and-pacing.md` |
| 6 Som | Diálogo nativo, falas em vários idiomas, voz travada, sem trilha | `references/dialogue-audio.md` |
| 7 Antes de enviar | Riscos de moderação, ordem das referências, proporção, orçamento (esperar o OK do usuário) | `references/moderation-and-pitfalls.md`, `references/formats-and-budget.md`, `scripts/cost_calc.py` |
| 8 QC do vídeo | Folhas de contato para checar rostos, mãos, corpos atravessando objetos, texto, finais mortos | `references/qc-checklist.md`, `scripts/contact_sheet.sh`, `templates/qc-report.md` |
| 9 Próximo plano | Extrair o frame de continuidade no ponto de corte | `references/continuity.md`, `scripts/cut_frame.sh` |
| 10 Pós e publicação | Cortar finais, silenciar a música do modelo, legendas sem pontuação, capa 9:16, rótulo de conteúdo de IA | `references/post-production.md`, `references/domestic.md` (rótulo de IA) |

Escolha de plataforma: `references/platform-comparison.md`. Fontes: `references/sources.md`.

## 2. Onze regras de ferro (todo prompt precisa passar)

1. **Beats por segundo**: segundos inteiros, em sequência, sem buracos (`0-2s / 2-7s / 7-10s`). Uma coisa principal por beat.
2. **Descreva só o quadro atual**: o modelo nunca viu suas versões anteriores. Nada de still, as before, again, "revisado", "igual da última vez". Estados que continuam vão no presente ("Cole está sentado na tampa da caçamba").
3. **Rostos só dos retratos de referência originais e travados**: nunca use frames de vídeo gerado como referência de rosto. O frame de continuidade controla só lado da câmera, enquadramento, marcação e luz.
4. **Diga para que serve cada referência e o que ela não deve controlar**: `Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`.
5. **Negativas agrupadas, curtas e escritas como FORBIDDEN / "no …"**, nunca "avoid". Tudo o que é visual e pode virar estado positivo deve virar ("o batente da porta e as quatro pessoas ficam no quadro").
6. **O diálogo vai no segundo exato em que acontece**, palavra por palavra, com quem fala e a descrição da voz; escreva "só X fala" e, para quem fica calado, `mouth stays closed, no lip movement`.
7. **Toda ação precisa de motivo**: nada de gestos simbólicos óbvios (guardar o dinheiro, apontar para o banco, olhar para a lente), ritmo enxuto, sem olhar parado no final.
8. **Cada plano novo parte do enquadramento e da marcação do anterior**: mesmo lado da câmera, mesmas posições, a não ser que o roteiro mude claramente de cena.
9. **Sem legenda, sem marca d'água, sem trilha de fundo**: diga uma vez no começo e uma no fim; qualquer texto desnecessário no quadro é "no lettering, no logos".
10. **Nunca invente números**: preços, limites e créditos levam fonte e data; se não souber, escreva "não testado".
11. **Qualidade pedida de acordo com a cena**: cite só as texturas finas que realmente estão neste plano (externas: pedras, água, folhas, montanhas ao longe; internas: tecido, veio da madeira, pele, cabelo) e peça "sharp fine detail, no blocky or grid-like compression artifacts" (detalhe fino e nítido, sem artefatos de compressão em blocos ou grade). Nada de palavras mágicas de qualidade para tudo, e não liste o que não está no quadro.

## 3. Formato de saída

- Antes de cada prompt, uma **tabela-resumo de beats** (não vai para a plataforma): segundos / enquadramento e câmera / ação / diálogo / som.
- O corpo do prompt em um bloco de código próprio, com a contagem de caracteres (`wc -m`) e o limite da plataforma.
- Liste a ordem de upload das referências: `Image 1 = retrato do personagem A` …
- Diga como o custo foi estimado (vale o que a plataforma mostrar); nunca envie um trabalho pago sem a confirmação do usuário.

## 4. Não faça

- Não clique em gerar pelo usuário, não compre créditos, não cancele um trabalho pago já enviado.
- Não coloque nomes de pessoas reais, marcas ou contas nos prompts.
- Não prometa recursos que a plataforma não publicou.
