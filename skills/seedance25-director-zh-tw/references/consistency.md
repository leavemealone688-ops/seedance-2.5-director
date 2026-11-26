# 全面一致性手冊

一致性不只是臉。觀眾出戏，常常是因為杯子換了手、招牌換了字、光從金色跳回藍色。下面每一類都給出**要鎖什麼、怎麼寫、怎麼查**。

總原則：**一致性靠"資產表 + 每條重申 + 銜接幀 + QC"四件套**，不靠模型記憶。資產表見 `../templates/asset-bible.md`。

---

## 1. 角色（臉 / 髮型 / 體型 / 服裝 / 配飾 / 硬記號）

詳見 `character-lock.md`。提示詞模式：

```
Image 1 is <稱呼>: same face, same <髮型輪廓+髮色>, same <體型/年齡感>, same <上裝>, same <下裝>, same <鞋>, same <配飾>. No <禁止飾品>.
```
中文：
```
@图片1 是<稱呼>：臉、<髮型>、<服裝>、<配飾>嚴格按此圖，不戴戒指，不戴眼鏡。
```

## 2. 服裝連續性（狀態會變的那種）

服裝狀態按"場次時間線"記錄：幹 → 淋溼、穿鞋 → 赤腳、外套 → 脫下、白襯衫 → 濺泥。

- 每條提示詞開頭寫**當前狀態**，用現在時："she is already barefoot"、"his shirt is soaked dark at the shoulders"。
- 狀態變化只在一個鏡頭內發生一次，並寫明在第幾秒："3-5s: she slips off her flats"。
- 後續鏡頭都寫"已經是"新狀態，並在資產表的"服裝狀態"列更新。
- 換裝鏡頭的定妝照：狀態差異大（換整套衣服）時，出一張新的狀態定妝照，資產編號加字尾 `C01-EDNA_barefoot`。

## 3. 場景（拓撲 / 空間錨點 / 陳設 / 招牌文字）

**鎖拓撲**：每個主場景出一張主圖 + 一張反打圖（相反方向），寫清空間錨點：門在哪側、窗在哪側、主要傢俱位置、出口方向。

提示詞模式：
```
Same <場景>: <左側錨點> on the left, <右側錨點> on the right, <縱深錨點> at the far end, exactly as in Image 3.
樓道空間、與牆齊平的木門、右手玻璃幕牆、盡頭灰色安全出口門，一律按 @图片1。
```

- **陳設**：關鍵陳設列清單（"一盤切開的白蛋糕在百合花左側；只有金髮女子面前一杯滿的茶"），其餘交給參考圖。
- **招牌與文字**：模型生成的背景文字常亂碼。
  - 不需要的文字：`the wall and door are plain and blank, no signs, no lettering of any kind`；或用運鏡把招牌移出畫面。
  - 需要的文字（墓碑、簡訊、降書）：直接讓模型生成並寫"字跡清晰不變形"，掛一張帶正確文字的道具圖；數字類資訊（計數、時間）交給後期疊加更穩。
- **門 / 裝置瞬增**：長條里門上常多出燈、屏、貓眼 → "門上只有一根橫推杆，全程不新增任何燈、螢幕或電子裝置"。

## 4. 道具與道具狀態

道具有**位置、持有者、狀態**三個屬性，每拍都可能變。

- 列道具狀態表：`道具 | 在誰手裡/在哪 | 狀態（滿/空、開/合、完整/破）| 從第幾秒變`。
- 每段時間線寫道具的結束狀態："End state: the bill is in her closed hand, resting in her lap."
- 交接寫死先後："Only after hearing this, she reaches into her pocket…"
- 唯一性："全程只有這一隻鈴"；數量會自己變多的道具要反覆強調。
- 長條裡道具會**瞬移**（Vigloo 團隊實測）→ 每拍重申位置。
- 道具參考圖單獨一張，寫"道具外觀按 @图片3"。

## 5. 光線 / 色溫 / 時間

- 每場寫**一個色溫數值 + 光源**："cool misty morning, about 4800K, soft overcast light"；夜戲寫"只用場景裡原有的實用光"。
- 光線變化當作事件寫進時間線，並寫"自然變化、不做超自然效果"："the light warms naturally to 3200K gold over 4 seconds"。
- 變化之後，後續鏡頭的貫穿項寫"warm gold holds throughout, never jumping back to cool blue"。
- 銜接幀負責傳遞光色；提示詞裡同時寫數值，兩者互相印證。
- 時間段（清晨 / 黃昏 / 深夜）寫進資產表，跨鏡頭不跳。

## 6. 機位軸線 / 180 度規則 / 銀幕方向

- 每場定一條**軸線**（兩個主要人物的連線）和**機位所在一側**，寫進資產表："全部鏡頭機位在皮卡右側"。
- 每條提示詞寫："on the same camera side of the truck as Image 4"。
- **銀幕方向**：人物從畫左走到畫右，下一鏡繼續從左往右；寫明"朝畫面右側走"。
- 對話正反打：A 在畫左看向畫右，B 在畫右看向畫左；視線寫清："eyeline clearly on him, to the right of frame"。
- 越軸只在劇本需要時做，並用一個過渡鏡頭（中性機位、人物移動帶過）。

## 7. 天氣與環境聲

- 天氣是狀態：雨勢、霧、風、地面溼度，每條重申。"大雨不停打在石案上濺起水花"。
- 環境聲跟天氣一致：雨聲、風聲、遠雷；雨停要作為事件寫出來。
- 背景人物要有自然小動作（"background mourners shift weight, slight head turns, they stay in place"），否則會定住不動。

## 8. 跨集一致性

- 全劇一份**角色聖經**：定妝照、硬記號文字、聲線描述、禁止飾品。硬記號文字一字不改地複製到每條提示詞。
- 場景複用同一張主圖和反打圖；改裝修、換季要出新版本並加編號字尾。
- 聲線：同一角色每集用同一段聲線描述，海外畫布用同一段 `@audio1`。
- 每集開頭的"上集回顧"鏡頭不要用上整合片截幀當臉部參考。

## 9. 資產庫與命名

```
assets/
  characters/  C01-EDNA_front.png  C01-EDNA_side.png  C01-EDNA_barefoot.png
  scenes/      S01-CLINIC_main.png  S01-CLINIC_reverse.png
  props/       P01-BELL.png  P02-LETTER_blank.png  P02-LETTER_signed.png
  audio/       V01-COLE_voice_3s.mp3
episodes/EP01/
  shots/  S03_v1_prompt.txt  S03_v1.mp4  S03_v1_contact.png  S03_v1_cut.png
```

- 編號一旦確認不復用；狀態變體加字尾，不改原圖。
- 每條提示詞的"參考圖順序"寫進分鏡表，例如 `1=C01-EDNA_front / 2=C02-COLE_front / 3=A01-DOG / 4=EP01_S02_v2_cut`。
- 鏡頭版本用 `_v1 _v2`，留用的在分鏡表標"鎖定"。

## 10. 一致性 QC（每條出片都查）

- 臉、髮型、服裝、配飾與定妝照逐項對比（抽幀聯絡表）。
- 道具位置、數量、狀態與道具表一致。
- 光色與上一鏡銜接幀一致，沒有跳色。
- 機位在同一側，人物左右沒互換，銀幕方向一致。
- 背景文字、門、裝置沒有新增。
- 詳見 `qc-checklist.md`。
