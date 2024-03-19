#> asset:item/54001/give/main
# 
# @within function asset:item/54001/give/

## アイテムid; String
  data modify storage asset:item id set value "cod"
## 名前; JsonText
  data modify storage asset:item Name set value '{"text":"サカナ―！"}'
## 説明; List.JsonText; (任意)
  data modify storage asset:item Lore set value ['{"text":"チンアナゴー！"}']
## 種類; String; ["Armor","Wand","Crystal","Meal","Misc"]
  data modify storage asset:item Ctgry set value "Misc"
## レアリティ
  scoreboard players set #Rarity Asset 10
## NBT; Compound; (任意)
  #data modify storage asset:item NBT set value {}
## アイテムを生成
  function asset.lib:item/give/check.condition
