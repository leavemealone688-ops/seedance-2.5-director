# 角色锁定（防跑脸）

## 核心规则

1. **先锁定妆照，再生成视频。** 每个出场角色先用图片模型出一张固定形象图（正面中景，干净背景，光线均匀）。没有这张图，不进视频生成。
2. **脸只认原始定妆照。** 绝不用生成视频的截帧、上一集画面、海报当脸部参考。截帧本身已经有轻微漂移，拿它当参考会一集比一集漂（团队踩过）。
3. **衔接帧只管空间。** 上一镜的衔接帧只用来锁机位一侧、景别、站位、光色。提示词里写明："do not copy any faces from Image 4"，并在角色入画时写 "that face must match Image 2 exactly, not Image 4"。
4. **上传顺序 = 首次出场顺序**，编号全片固定，不随镜头换。

## 定妆照规格（建议）

| 项 | 建议 |
|---|---|
| 构图 | 正面或 3/4 侧中景，头到腰；需要全身比例时另加一张全身 |
| 背景 | 纯色或虚化，不带文字、logo |
| 一张图 | 只有一个人、一张脸；表情网格要裁开 |
| 多视角 | 角色转身多时加侧面、背面各一张（官方说明 2.5 支持多视角图，见 `sources.md`） |
| 画幅 | 和成片同画幅（竖屏剧用 9:16 定妆照，减少裁切变形） |

## 硬记号（每条提示词都重复）

模型最容易漂的是：发型轮廓、发色、眼镜、首饰、服装颜色和层次、标志性伤疤/痣、背带等配件。

写法：`Image 1 is the elderly woman Edna: same face, same short wavy silver-white hair, same small gold stud earrings, same teal-green linen jacket over a cream button blouse, same long navy skirt.`

- **同时写禁止出现的饰品**：`no rings, no necklace, no glasses`。
- 配件会和物体粘连的（背带、链子、包带）写："suspenders stay clearly on his shoulders, separate from the truck, the blanket and the dog"。
- 服装状态变化（脱鞋、卷袖、淋湿）写进当前镜头的开场状态："she is already barefoot"。

## 多角色

- 每人一个固定称呼 + 一张参考 + 一套硬记号，**全文同一称呼**。
- 每个说话段写"只有 X 说话，Y 闭嘴"。
- 人数写死："Only these two people and this one dog appear."
- 3 个以上角色同框：优先拆镜头；必须同框时把站位从左到右写清，并提高单人景别比例。
- 官方说明 2.5 能同时还原多主体，但团队观察到人越多越容易互换外貌、抢台词 → 一条里说话的人不超过 2 个最稳。

## 平台差异

| 平台 | 角色怎么挂 |
|---|---|
| 小云雀 / LibTV / 即梦 / Higgsfield | 原始定妆照直接作参考图 |
| Vigloo Studio | 写实人脸上传会被拒 → 只能用 Character 节点，提示词只写 `@Name`，不写长相 |
| TapNow | `{{Image N}}` chip 挂定妆照；首帧图先过审再加人 |

## 首帧图

- 需要精确开场构图时，先用图片模型出首帧：**先出空场底板过审，再加人**。
- 首帧自己查穿帮：人坐进桌子里、手指数、道具朝向、文字乱码。
- 首帧里的人脸也必须来自定妆照（图片模型用定妆照做参考生成）。

## 跑脸了怎么办

1. 检查是否用了截帧当脸部参考 → 换回原始定妆照。
2. 检查硬记号是否每条都写了、是否和图冲突。
3. 角色入画那一秒加"face matches Image N exactly"。
4. 缩小同框人数，或让人物更大（中景以上）。
5. 仍漂：重跑，不要在后期换脸硬修（口型会坏）。
