#> asset.lib:mob/summon/equipments/head
# 頭装備
# @within function asset.lib:mob/summon/main

## IDをコピー
  data modify storage asset:item ID set from storage asset:mob Armor.Head.ID
## アイテムを生成
  function #asset:item/create
## アイテムを移行
  data modify storage asset:mob Armor.Head set from block 0 -64 0 Items[0]
