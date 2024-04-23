#> asset:item/-54002/create/main
# 
# @within function asset:item/-54002/create/

## アイテムid; String
  data modify storage asset:item id set value "iron_helmet"
## 名前; JsonText
  data modify storage asset:item Name set value '{"text":"鉄兜"}'
## 説明; List.JsonText; (任意)
  #data modify storage asset:item Lore set value []
## 種類; String; ["Wand","Armor","Crystal","Meal","Misc"]
  data modify storage asset:item Category set value "Armor"
## レアリティ
  scoreboard players set #Rarity Asset 3
## 効果; List.Compound
###   Name; String; [HP.Max, MP.Max, Speed]
###   Operation; Int ; [0: 元の値にAmountを加算, 1: 元の値にAmount＊100％を加算, 2: 元の値にAmount＊100％を乗算]
###   Amount; Int
  data modify storage asset:item Stats set value [{Name:"HP.Max",Operation:0,Amount:10},{Name:"MP.Max",Operation:0,Amount:10}]
## NBT; Compound; (任意)
  #data modify storage asset:item NBT set value {}
## アイテムを生成
  function asset.lib:item/create/check.condition
