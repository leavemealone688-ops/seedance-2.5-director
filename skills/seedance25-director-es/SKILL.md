---
name: seedance25-director-es
description: (Español) Prompts de video, storyboards y guiones rodables para Seedance 2.5. Para escribir o corregir un prompt de Seedance 2.5 (4-30 s), desglosar un guion en planos con beats por segundo, coherencia de personajes, escenarios, utilería y luz, raccord entre planos, ganchos de microdramas verticales, diálogo y sincronía labial, evitar rechazos de moderación, QC y posproducción. Plataformas de China (Xiaoyunque, LibTV, Jimeng) e internacionales (Vigloo Studio, TapNow, Higgsfield).
---

# Prompts · Storyboards · Guiones para Seedance 2.5

Un flujo completo del guion al prompt listo para enviar, destilado de producciones reales de microdramas y tráileres. Prioridad: **límites de la plataforma > reglas de este paquete > estilo personal**.

> En esta carpeta, `references/`, `templates/` y `examples/` están en inglés (traducción al español pendiente). Todas las reglas esenciales están en español en este SKILL.md.

## 0. Decide tres cosas primero

1. **Qué plataforma**: China (Xiaoyunque 小云雀 / LibTV / Jimeng 即梦) → lee `references/domestic.md`; lienzos internacionales (Vigloo Studio / TapNow / Higgsfield) → lee `references/overseas.md`. La sintaxis de referencias, las políticas sobre rostros reales y el cobro son distintos; no los mezcles.
2. **Formato de entrega**: ¿microdrama vertical 9:16 o corto / tráiler 16:9? Lee `references/formats-and-budget.md`.
3. **Qué se pide**: ¿guion → storyboard → prompts, corregir un prompt o revisar un render terminado? Salta al paso correspondiente.

## 1. Flujo de trabajo

| Paso | Qué hacer | Leer |
|---|---|---|
| 1 Logline y guion | Pitch de una línea, gancho de 3 segundos, guion de episodio rodable | `references/viral-hooks.md`, `references/script-and-storyboard.md`, `templates/episode-script.md` |
| 2 Recursos | Fijar retratos de referencia de personajes, planos principal/contraplano del escenario, estados de la utilería; crear la biblia de recursos | `references/character-lock.md`, `references/consistency.md`, `templates/asset-bible.md` |
| 3 Storyboard | Dividir en unidades de generación de 4-30 s, cada una con beats por segundo | `templates/script-to-shots.md`, `templates/storyboard-table.md`, `references/long-takes.md`, `references/action-and-fights.md` |
| 4 Prompt | Usar la plantilla de la plataforma; contar caracteres | `references/universal-rules.md`, `templates/shot-prompt-domestic.md` / `templates/canvas-prompt-overseas.md`, `examples/` |
| 5 Actuación y ritmo | Quitar gestos simbólicos demasiado obvios, apretar el ritmo | `references/acting-and-pacing.md` |
| 6 Sonido | Diálogo nativo, líneas en varios idiomas, fijar la voz, sin música de fondo | `references/dialogue-audio.md` |
| 7 Antes de enviar | Riesgos de moderación, orden de referencias, relación de aspecto, presupuesto (esperar el OK del usuario) | `references/moderation-and-pitfalls.md`, `references/formats-and-budget.md`, `scripts/cost_calc.py` |
| 8 QC del render | Hojas de contacto para revisar rostros, manos, cuerpos que atraviesan objetos, texto, colas muertas | `references/qc-checklist.md`, `scripts/contact_sheet.sh`, `templates/qc-report.md` |
| 9 Siguiente plano | Extraer el fotograma de raccord en el punto de salida del montaje | `references/continuity.md`, `scripts/cut_frame.sh` |
| 10 Posproducción y publicación | Recortar colas, silenciar la música del modelo, subtítulos sin puntuación, portada 9:16, etiqueta de contenido IA | `references/post-production.md`, `references/domestic.md` (etiquetado IA) |

Elegir plataforma: `references/platform-comparison.md`. Fuentes: `references/sources.md`.

## 2. Once reglas de hierro (todo prompt debe cumplirlas)

1. **Beats por segundo**: segundos enteros, seguidos, sin huecos (`0-2s / 2-7s / 7-10s`). Una sola cosa principal por beat.
2. **Describe solo el fotograma actual**: el modelo nunca vio tus versiones anteriores. No escribas still, as before, again, «revisado», «igual que antes». Los estados que continúan van en presente («Cole está sentado en la compuerta»).
3. **Los rostros salen solo de los retratos de referencia originales y fijados**: nunca uses fotogramas de un video generado como referencia de rostro. El fotograma de raccord controla solo el lado de cámara, el encuadre, la posición de los actores y la luz.
4. **Di para qué sirve cada referencia y qué no debe controlar**: `Image 4 is only a continuity frame: use it for camera side, framing, light; do not copy faces, signs or lettering`.
5. **Las negaciones van agrupadas, breves y como FORBIDDEN / «no …»**, nunca «avoid». Todo lo visual que pueda expresarse como estado positivo, exprésalo así («el marco de la puerta y las cuatro personas permanecen en cuadro»).
6. **El diálogo va en el segundo exacto en que ocurre**, literal, con quién habla y descripción de la voz; escribe «solo X habla» y, para los personajes callados, `mouth stays closed, no lip movement`.
7. **Cada acción necesita un motivo**: nada de gestos simbólicos obvios (guardarse el dinero, señalar el banco, mirar a cámara), ritmo ágil, sin mirada sostenida al final.
8. **Cada plano nuevo parte del encuadre y las posiciones del anterior**: mismo lado de cámara, mismas posiciones, salvo que el guion cambie claramente de escena.
9. **Sin subtítulos, sin marca de agua, sin música de fondo**: dilo una vez al principio y otra al final; cualquier texto innecesario en cuadro es «no lettering, no logos».
10. **Nunca inventes cifras**: precios, límites y créditos llevan fuente y fecha; si no se sabe, escribe «sin verificar».
11. **La calidad se pide según la escena**: nombra solo las texturas finas que de verdad hay en este plano (exteriores: rocas, agua, hojas, montañas lejanas; interiores: tela, veta de la madera, piel, cabello) y pide «sharp fine detail, no blocky or grid-like compression artifacts» (detalle fino y nítido, sin artefactos de compresión en bloques o cuadrícula). Nada de palabras mágicas de calidad para todo, y no enumeres lo que no aparece.

## 3. Formato de salida

- Antes de cada prompt, una **tabla resumen de beats** (no se pega en la plataforma): segundos / encuadre y cámara / acción / diálogo / sonido.
- El cuerpo del prompt en su propio bloque de código, con su número de caracteres (`wc -m`) y el límite de la plataforma.
- Lista el orden de subida de referencias: `Image 1 = retrato del personaje A` …
- Indica cómo se estima el coste (manda lo que muestre la plataforma); nunca envíes un trabajo de pago sin la confirmación del usuario.

## 4. No hagas

- No pulses generar por el usuario, no compres créditos ni canceles un trabajo de pago ya enviado.
- No pongas nombres de personas reales, marcas ni cuentas en los prompts.
- No prometas funciones que la plataforma no haya publicado.
