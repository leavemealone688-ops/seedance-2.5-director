# 全面一致性手册

一致性不只是脸。观众出戏，常常是因为杯子换了手、招牌换了字、光从金色跳回蓝色。下面每一类都给出**要锁什么、怎么写、怎么查**。

总原则：**一致性靠"资产表 + 每条重申 + 衔接帧 + QC"四件套**，不靠模型记忆。资产表见 `../templates/asset-bible.md`。

---

## 1. 角色（脸 / 发型 / 体型 / 服装 / 配饰 / 硬记号）

详见 `character-lock.md`。提示词模式：

```
Image 1 is <称呼>: same face, same <发型轮廓+发色>, same <体型/年龄感>, same <上装>, same <下装>, same <鞋>, same <配饰>. No <禁止饰品>.
```
中文：
```
@图片1 是<称呼>：脸、<发型>、<服装>、<配饰>严格按此图，不戴戒指，不戴眼镜。
```

## 2. 服装连续性（状态会变的那种）

服装状态按"场次时间线"记录：干 → 淋湿、穿鞋 → 赤脚、外套 → 脱下、白衬衫 → 溅泥。

- 每条提示词开头写**当前状态**，用现在时："she is already barefoot"、"his shirt is soaked dark at the shoulders"。
- 状态变化只在一个镜头内发生一次，并写明在第几秒："3-5s: she slips off her flats"。
- 后续镜头都写"已经是"新状态，并在资产表的"服装状态"列更新。
- 换装镜头的定妆照：状态差异大（换整套衣服）时，出一张新的状态定妆照，资产编号加后缀 `C01-EDNA_barefoot`。

## 3. 场景（拓扑 / 空间锚点 / 陈设 / 招牌文字）

**锁拓扑**：每个主场景出一张主图 + 一张反打图（相反方向），写清空间锚点：门在哪侧、窗在哪侧、主要家具位置、出口方向。

提示词模式：
```
Same <场景>: <左侧锚点> on the left, <右侧锚点> on the right, <纵深锚点> at the far end, exactly as in Image 3.
楼道空间、与墙齐平的木门、右手玻璃幕墙、尽头灰色安全出口门，一律按 @图片1。
```

- **陈设**：关键陈设列清单（"一盘切开的白蛋糕在百合花左侧；只有金发女子面前一杯满的茶"），其余交给参考图。
- **招牌与文字**：模型生成的背景文字常乱码。
  - 不需要的文字：`the wall and door are plain and blank, no signs, no lettering of any kind`；或用运镜把招牌移出画面。
  - 需要的文字（墓碑、短信、降书）：直接让模型生成并写"字迹清晰不变形"，挂一张带正确文字的道具图；数字类信息（计数、时间）交给后期叠加更稳。
- **门 / 设备瞬增**：长条里门上常多出灯、屏、猫眼 → "门上只有一根横推杆，全程不新增任何灯、屏幕或电子设备"。

## 4. 道具与道具状态

道具有**位置、持有者、状态**三个属性，每拍都可能变。

- 列道具状态表：`道具 | 在谁手里/在哪 | 状态（满/空、开/合、完整/破）| 从第几秒变`。
- 每段时间线写道具的结束状态："End state: the bill is in her closed hand, resting in her lap."
- 交接写死先后："Only after hearing this, she reaches into her pocket…"
- 唯一性："全程只有这一只铃"；数量会自己变多的道具要反复强调。
- 长条里道具会**瞬移**（Vigloo 团队实测）→ 每拍重申位置。
- 道具参考图单独一张，写"道具外观按 @图片3"。

## 5. 光线 / 色温 / 时间

- 每场写**一个色温数值 + 光源**："cool misty morning, about 4800K, soft overcast light"；夜戏写"只用场景里原有的实用光"。
- 光线变化当作事件写进时间线，并写"自然变化、不做超自然效果"："the light warms naturally to 3200K gold over 4 seconds"。
- 变化之后，后续镜头的贯穿项写"warm gold holds throughout, never jumping back to cool blue"。
- 衔接帧负责传递光色；提示词里同时写数值，两者互相印证。
- 时间段（清晨 / 黄昏 / 深夜）写进资产表，跨镜头不跳。

## 6. 机位轴线 / 180 度规则 / 银幕方向

- 每场定一条**轴线**（两个主要人物的连线）和**机位所在一侧**，写进资产表："全部镜头机位在皮卡右侧"。
- 每条提示词写："on the same camera side of the truck as Image 4"。
- **银幕方向**：人物从画左走到画右，下一镜继续从左往右；写明"朝画面右侧走"。
- 对话正反打：A 在画左看向画右，B 在画右看向画左；视线写清："eyeline clearly on him, to the right of frame"。
- 越轴只在剧本需要时做，并用一个过渡镜头（中性机位、人物移动带过）。

## 7. 天气与环境声

- 天气是状态：雨势、雾、风、地面湿度，每条重申。"大雨不停打在石案上溅起水花"。
- 环境声跟天气一致：雨声、风声、远雷；雨停要作为事件写出来。
- 背景人物要有自然小动作（"background mourners shift weight, slight head turns, they stay in place"），否则会定住不动。

## 8. 跨集一致性

- 全剧一份**角色圣经**：定妆照、硬记号文本、声线描述、禁止饰品。硬记号文本一字不改地复制到每条提示词。
- 场景复用同一张主图和反打图；改装修、换季要出新版本并加编号后缀。
- 声线：同一角色每集用同一段声线描述，海外画布用同一段 `@audio1`。
- 每集开头的"上集回顾"镜头不要用上集成片截帧当脸部参考。

## 9. 资产库与命名

```
assets/
  characters/  C01-EDNA_front.png  C01-EDNA_side.png  C01-EDNA_barefoot.png
  scenes/      S01-CLINIC_main.png  S01-CLINIC_reverse.png
  props/       P01-BELL.png  P02-LETTER_blank.png  P02-LETTER_signed.png
  audio/       V01-COLE_voice_3s.mp3
episodes/EP01/
  shots/  S03_v1_prompt.txt  S03_v1.mp4  S03_v1_contact.png  S03_v1_cut.png
```

- 编号一旦确认不复用；状态变体加后缀，不改原图。
- 每条提示词的"参考图顺序"写进分镜表，例如 `1=C01-EDNA_front / 2=C02-COLE_front / 3=A01-DOG / 4=EP01_S02_v2_cut`。
- 镜头版本用 `_v1 _v2`，留用的在分镜表标"锁定"。

## 10. 一致性 QC（每条出片都查）

- 脸、发型、服装、配饰与定妆照逐项对比（抽帧联系表）。
- 道具位置、数量、状态与道具表一致。
- 光色与上一镜衔接帧一致，没有跳色。
- 机位在同一侧，人物左右没互换，银幕方向一致。
- 背景文字、门、设备没有新增。
- 详见 `qc-checklist.md`。
