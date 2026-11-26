# 角色鎖定（防跑臉）

## 核心規則

1. **先鎖定妝照，再生成影片。** 每個出場角色先用圖片模型出一張固定形象圖（正面中景，乾淨背景，光線均勻）。沒有這張圖，不進视频生成。
2. **臉只認原始定妝照。** 絕不用生成影片的截幀、上一集畫面、海報當臉部參考。截幀本身已經有輕微漂移，拿它當參考會一集比一集漂（團隊踩過）。
3. **銜接幀只管空間。** 上一鏡的銜接幀只用來鎖機位一側、景別、站位、光色。提示詞裡寫明："do not copy any faces from Image 4"，並在角色入畫時寫 "that face must match Image 2 exactly, not Image 4"。
4. **上傳順序 = 首次出場順序**，編號全片固定，不隨鏡頭換。

## 定妝照規格（建議）

| 項 | 建議 |
|---|---|
| 構圖 | 正面或 3/4 側中景，頭到腰；需要全身比例時另加一張全身 |
| 背景 | 純色或虛化，不帶文字、logo |
| 一張圖 | 只有一個人、一張臉；表情網格要裁開 |
| 多視角 | 角色轉身多時加側面、背面各一張（官方說明 2.5 支援多視角圖，見 `sources.md`） |
| 畫幅 | 和成片同畫幅（豎屏劇用 9:16 定妝照，減少裁切變形） |

## 硬記號（每條提示詞都重複）

模型最容易漂的是：髮型輪廓、髮色、眼鏡、首飾、服裝顏色和層次、標誌性傷疤/痣、揹帶等配件。

寫法：`Image 1 is the elderly woman Edna: same face, same short wavy silver-white hair, same small gold stud earrings, same teal-green linen jacket over a cream button blouse, same long navy skirt.`

- **同時寫禁止出現的飾品**：`no rings, no necklace, no glasses`。
- 配件會和物體粘連的（揹帶、鏈子、包帶）寫："suspenders stay clearly on his shoulders, separate from the truck, the blanket and the dog"。
- 服裝狀態變化（脫鞋、捲袖、淋溼）寫進當前鏡頭的開場狀態："she is already barefoot"。

## 多角色

- 每人一個固定稱呼 + 一張參考 + 一套硬記號，**全文同一稱呼**。
- 每個說話段寫"只有 X 說話，Y 閉嘴"。
- 人數寫死："Only these two people and this one dog appear."
- 3 個以上角色同框：優先拆鏡頭；必須同框時把站位從左到右寫清，並提高單人景別比例。
- 官方說明 2.5 能同時還原多主體，但團隊觀察到人越多越容易互換外貌、搶臺詞 → 一條裡說話的人不超過 2 個最穩。

## 平台差異

| 平台 | 角色怎麼掛 |
|---|---|
| 小云雀 / LibTV / 即梦 / Higgsfield | 原始定妝照直接作參考圖 |
| Vigloo Studio | 寫實人臉上傳會被拒 → 只能用 Character 節點，提示詞只寫 `@Name`，不寫長相 |
| TapNow | `{{Image N}}` chip 掛定妝照；首幀圖先過審再加人 |

## 首幀圖

- 需要精確開場構圖時，先用圖片模型出首幀：**先出空場底板過審，再加人**。
- 首幀自己查穿幫：人坐進桌子裡、手指數、道具朝向、文字亂碼。
- 首幀裡的人臉也必須來自定妝照（圖片模型用定妝照做参考生成）。

## 跑臉了怎麼辦

1. 檢查是否用了截幀當臉部參考 → 換回原始定妝照。
2. 檢查硬記號是否每條都寫了、是否和圖衝突。
3. 角色入畫那一秒加"face matches Image N exactly"。
4. 縮小同框人數，或讓人物更大（中景以上）。
5. 仍漂：重跑，不要在後期換臉硬修（口型會壞）。
