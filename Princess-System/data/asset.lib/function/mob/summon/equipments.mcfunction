#> asset.lib:mob/summon/equipments
#
# @within function asset.lib:mob/summon/main

## アイテムを生成
    $function #asset:item/create with storage asset:mob armor.$(parts)

## アイテムを移行
    $execute in overworld run data modify storage asset:mob armor.$(parts) set from block 0 -64 0 Items[0]
