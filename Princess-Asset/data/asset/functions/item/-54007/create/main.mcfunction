#> asset:item/-54007/create/main
# 
# @within function asset:item/-54007/create/

## アイテムid; String
  data modify storage asset:item id set value "crossbow"
## 名前; JsonText
  data modify storage asset:item Name set value '{"text":"テストワンド"}'
## 説明; List.JsonText; (任意)
  #data modify storage asset:item Lore set value []
## 種類; String; ["Wand","Armor","Crystal","Meal","Misc"]
  data modify storage asset:item Category set value "Wand"
## レアリティ
  data modify storage asset:item Rarity set value 10
## 効果; List.Compound
###   Name; String; [HP.Max, MP.Max, ATK, DEF, Speed]
###   Operation; Int ; [0: 元の値にAmountを加算, 1: 元の値にAmount＊100％を加算, 2: 元の値にAmount＊100％を乗算]
###   Amount; Int
  data modify storage asset:item Stats set value [{Name:"MP.Max",Operation:0,Amount:99999999}]
## NBT; Compound; (任意)
  data modify storage asset:item NBT set value {ChargedProjectiles:[{id:"air",Count:1b}],Charged:1b}
## アイテムを生成
  function asset.lib:item/create/check.condition
