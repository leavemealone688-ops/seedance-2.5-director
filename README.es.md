🌐 [English](README.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [한국어](README.ko.md) · [日本語](README.ja.md) · [Español](README.es.md) · [Português (BR)](README.pt-BR.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md) · [ไทย](README.th.md) · [العربية](README.ar.md) · [Русский](README.ru.md)

# Seedance 2.5 Director

**Skill de prompts · storyboards · guiones para Seedance 2.5**

Un **paquete de skills de producción de video con Seedance 2.5** para asistentes de programación con IA y agentes: desde el pitch de una línea y un guion rodable, pasando por el desglose en planos, hasta prompts listos para pegar, control de calidad del render y posproducción. Las reglas salen de producciones reales de microdramas verticales y tráileres, contrastadas con las guías oficiales públicas.

- Dos manuales: **plataformas de China** (Xiaoyunque, LibTV, Jimeng) y **plataformas internacionales** (Vigloo Studio, TapNow, Higgsfield)
- Coherencia completa: personajes, estados del vestuario, disposición del escenario, estados de la utilería, luz y color, eje y dirección de pantalla, clima, continuidad entre episodios, nombres de recursos
- Estructura viral: ganchos de 3 segundos, ritmo de retención, giros y pagos, ganchos al final del episodio, portadas y títulos, mejora con tus propias métricas
- Plantillas + ejemplos + scripts (hojas de contacto, fotogramas de raccord, conteo de caracteres, presupuesto)
- Disponible en 14 idiomas

> Los precios, límites y funciones de las plataformas cambian en cualquier momento. Cada cifra lleva fuente y fecha (a 2026-11): **verifícala en la plataforma antes de usarla**. Lo que no hemos probado está marcado como «sin verificar».

> Versión en español: README y SKILL.md en español; `references/`, `templates/` y `examples/` por ahora en inglés.

## Qué hace esta skill por los creadores

Los problemas de todos los días al hacer dramas con IA en Seedance 2.5, y lo que cambia cuando tu asistente sigue esta skill. Los ejemplos son fragmentos breves del estilo de prompt que enseña.

### 1. De una idea de una línea a prompts por plano listos para generar

**Antes**
```text
An old woman comforts a man whose dog is sick.
```
**Después**
```text
0-2s: medium, truck right. Edna enters from the porch and stops beside Cole.
2-7s: Edna, warm husky older female voice: "Don't let fear be what he sees." Only Edna speaks.
7-10s: Cole looks up, one breath, looks down at the dog. No long staring hold.
```

### 2. Rostros, vestuario, escenarios y utilería iguales entre planos y episodios

**Antes**
```text
Same woman as before, same clothes.
```
**Después**
```text
Image 1 is Edna: same face, same short wavy silver-white hair, same small gold stud
earrings, same teal-green linen jacket. No rings, no glasses.
```

### 3. Cada plano empalma limpio con el anterior

**Antes**
```text
(new shot opens anywhere; the lead ends up a tiny figure in the background)
```
**Después**
```text
Image 4 is only a continuity frame: same camera side, framing and light;
do not copy faces or lettering. The shot MUST open in the same framing as Image 4.
```

### 4. Enganchar en 3 segundos, retener y cerrar cada episodio con un cliffhanger

**Antes**
```text
0-3s: slow aerial shot of the city at dusk.
```
**Después**
```text
0-1s: open mid-action, the slap has just landed; first line within 1 s.
…last beat ends on the frame that raises the new question; the frame holds still.
```

### 5. Diálogo, sincronía labial y voz que no cambian de personaje

**Antes**
```text
Lines listed at the end. "Her lips part."
```
**Después**
```text
2-7s: Edna speaks in a warm, husky older American female voice: "…"
Precise lip sync. Only Edna speaks; Cole's mouth stays closed, no lip movement.
```

### 6. Menos renders rechazados o desperdiciados, y presupuesto antes de gastar créditos

**Antes**
```text
Blood on the floor, he kills the guard. (submit and hope)
```
**Después**
```text
He falls and stops moving. No blood, no weapons.
$ python3 scripts/cost_calc.py --platform xiaoyunque --clips 8 --retry 0.5
```

### 7. Escribir para la plataforma que de verdad usas (China vs. internacional)

**Antes**
```text
One prompt pasted everywhere; a photoreal portrait uploaded to Vigloo (rejected).
```
**Después**
```text
Xiaoyunque: @图片1 portrait + 参考生成 · 9:16 · 10s
Vigloo:     @Mina Character node + empty plate @image1 + voice @audio1
```

### 8. Listas de QC y scripts de ffmpeg en vez de revisar a ojo

**Antes**
```text
Watch it once, notice six fingers after posting.
```
**Después**
```text
$ scripts/contact_sheet.sh S03_v1.mp4 S03_v1_hands.png 6 6
$ scripts/cut_frame.sh S02_v2.mp4 6.0 S02_v2_cut.png
```

### Para quién es

- Creadores de microdramas verticales para Douyin, Shorts, Reels o apps de dramas
- Cineastas de IA que hacen cortos, tráileres y planos secuencia
- Equipos de marca y publicidad que necesitan personajes repetibles y piezas a medida
- Participantes en concursos que deben cumplir duración, formato y reglas de etiquetado

Aquí no hay tasas de éxito inventadas: la skill pide al asistente usar solo métricas y precios reales.

## Idiomas

Cada idioma es una carpeta de skill válida e independiente, con un `name` único. Instala solo el que necesites con `--lang`.

| Idioma | Carpeta | `--lang` | Traducido |
|---|---|---|---|
| English | `skills/seedance25-director-en/` | `en` | Todo (SKILL.md, references, templates, notas de ejemplos) |
| 简体中文 | `skills/seedance25-director/` | `zh-cn` | Todo (SKILL.md, references, templates, notas de ejemplos) |
| 繁體中文 | `skills/seedance25-director-zh-tw/` | `zh-tw` | Todo (SKILL.md, references, templates, notas de ejemplos) |
| 한국어 | `skills/seedance25-director-ko/` | `ko` | Todo (SKILL.md, references, templates, notas de ejemplos) |
| 日本語 | `skills/seedance25-director-ja/` | `ja` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |
| Español | `skills/seedance25-director-es/` | `es` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |
| Português (BR) | `skills/seedance25-director-pt-br/` | `pt-br` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |
| Français | `skills/seedance25-director-fr/` | `fr` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |
| Deutsch | `skills/seedance25-director-de/` | `de` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |
| Bahasa Indonesia | `skills/seedance25-director-id/` | `id` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |
| Tiếng Việt | `skills/seedance25-director-vi/` | `vi` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |
| ไทย | `skills/seedance25-director-th/` | `th` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |
| العربية | `skills/seedance25-director-ar/` | `ar` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |
| Русский | `skills/seedance25-director-ru/` | `ru` | SKILL.md en este idioma; references / templates / examples en inglés por ahora |

## Estructura

```
seedance-2.5-director/
├── README.md / README.<lang>.md   este archivo + traducciones
├── LICENSE                 CC BY-NC 4.0
├── AGENTS.md               puntero para herramientas que leen AGENTS.md
├── GEMINI.md               contexto de la extensión de Gemini CLI
├── gemini-extension.json   manifiesto de la extensión de Gemini CLI
├── install.sh              instala en cada herramienta / crea zips
├── assets/alipay.jpg
└── skills/
    ├── seedance25-director/         chino simplificado, versión de referencia
    │   ├── SKILL.md              entrada: flujo + 11 reglas de hierro
    │   ├── references/           manuales (plataformas, escritura, coherencia, ganchos, QC, posproducción…)
    │   ├── templates/            plantillas de prompt / storyboard / guion / recursos / QC
    │   ├── examples/             prompts de ejemplo adaptados de renders reales
    │   └── scripts/              capturas con ffmpeg, conteo de caracteres, presupuesto
    └── seedance25-director-<lang>/  la misma skill en otro idioma
```

## Instalación

Necesitas `bash`; los scripts también requieren `ffmpeg`/`ffprobe` y `python3`.

```bash
git clone https://github.com/leavemealone688-ops/seedance-2.5-director.git
cd seedance-2.5-director
./install.sh all                       # todas las herramientas, todos los idiomas
./install.sh claude --lang es          # una herramienta, un idioma
./install.sh codex --lang en,es         # varios idiomas
./install.sh cursor --project /path/to/repo --lang es   # en un proyecto concreto
./install.sh all --dry-run             # solo muestra dónde iría
./install.sh workbuddy-zip --lang es   # zip para subir a WorkBuddy
```

Si ya existe una carpeta con el mismo nombre, se renombra como copia de seguridad. Las skills se copian, no se enlazan (algunas herramientas ignoran los enlaces simbólicos). Consejo: instala un solo idioma por herramienta; con los 14, el asistente verá 14 skills casi iguales.

### Notas por herramienta

| Herramienta | Carpeta de usuario | Carpeta de proyecto | Estado |
|---|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | ✅ verificado con la documentación oficial (code.claude.com/docs/en/skills) |
| OpenAI Codex (CLI / IDE) | `~/.agents/skills/` (las versiones antiguas leen `~/.codex/skills/`) | `.agents/skills/` | ✅ verificado con la documentación oficial |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` | ✅ verificado con la documentación oficial (geminicli.com); `/skills list`, `/skills reload` |
| Extensión de Gemini CLI | el repo completo (tiene `gemini-extension.json`, skills en `skills/`) | — | ✅ verificado con la documentación oficial |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` | ✅ verificado con la documentación oficial (cursor.com/docs/skills) |
| CodeBuddy Code | `~/.codebuddy/skills/` | `.codebuddy/skills/` | ✅ verificado con la documentación oficial (codebuddy.ai/docs/zh/cli/skills) |
| WorkBuddy | cliente: Skills → Añadir skill → Subir paquete local | — | ⚠️ sin verificar: la página oficial menciona importar un paquete local pero no su formato; `./install.sh workbuddy-zip` comprime la carpeta del SKILL.md, la importación no se ha probado |

Tras instalar: en **Claude Code** escribe `/seedance25-director-es` (o describe la tarea); en **Codex** `$seedance25-director-es` o `/skills`; en **Gemini CLI** comprueba con `/skills list`; en **Cursor** escribe `/` en el chat del Agent y busca `seedance25`; en **CodeBuddy** abre `/skills`.

### Solo leer las reglas

Empieza por `skills/seedance25-director-es/SKILL.md` y sigue su tabla de flujo hasta los archivos que necesites.

## Inicio rápido

1. Dile al asistente la plataforma (p. ej. Xiaoyunque 9:16 10s), la historia y los retratos de los personajes.
2. Siguiendo `SKILL.md` te devuelve: tabla de beats → orden de subida de referencias → cuerpo del prompt (con número de caracteres) → presupuesto.
3. Tú confirmas y lo envías en la plataforma (la skill nunca envía trabajos de pago por ti).
4. Tras el render, pídele `scripts/contact_sheet.sh` para el QC y `scripts/cut_frame.sh` para sacar el fotograma de raccord del siguiente plano.

## Principios

1. Cada render cuesta dinero: primero ajustes y presupuesto, se envía solo tras confirmar.
2. Los rostros salen solo de los retratos originales; el fotograma de raccord controla solo cámara, posiciones y color.
3. Cada plano parte del encuadre y las posiciones del anterior.
4. Actuación natural, ritmo ágil, sin gestos simbólicos obvios.
5. Pide detalle nítido en las texturas que de verdad hay en el plano, sin artefactos de compresión en bloques o cuadrícula.
6. Silencia en posproducción la música del modelo, recorta colas muertas, subtítulos quemados sin puntuación, portadas 9:16.
7. Nunca inventes cifras; si no se sabe, «sin verificar». Nada de cuentas, contraseñas, correos ni claves en el repo.

## Contribuir

- Resultados nuevos: indica plataforma, fecha y ajustes; actualiza el `references/*.md` correspondiente y la tabla de tarifas de `scripts/cost_calc.py`.
- Cambia primero la versión de referencia `skills/seedance25-director/` y después las carpetas de idiomas. `AGENTS.md` y `GEMINI.md` son solo punteros.

## Licencia

Bajo licencia [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (Atribución-NoComercial): puedes usar, adaptar y compartir con atribución; prohibido el uso comercial.

## 联系与支持 / Contact & Support

作者：Jason Oh（Director of Jason Short Dramas）

- 合作 / 定制 / 商务：jasonshortdramas@gmail.com
- YouTube / Instagram：[@jasonshortdramas](https://www.youtube.com/@jasonshortdramas)

如果这个 skill 帮到了你，欢迎请作者喝杯咖啡 ☕ If this skill helped you, consider buying me a coffee.

- Ko-fi（PayPal / 信用卡，海外推荐）：[ko-fi.com/jasonshortdramas](https://ko-fi.com/jasonshortdramas)
- 支付宝 Alipay（国内）：

<img src="assets/alipay.jpg" alt="支付宝 Alipay" width="220">
