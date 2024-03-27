#> asset.lib:mob/summon/equipments/offhand
# 
# @within function asset.lib:mob/summon/main

## IDをコピー
  data modify storage asset:item ID set from storage asset:mob Weapon.Offhand.ID
## アイテムを生成
  function #asset:item/create
## アイテムを移行
  data modify storage asset:mob Weapon.Offhand set from block 0 -64 0 Items[0]
