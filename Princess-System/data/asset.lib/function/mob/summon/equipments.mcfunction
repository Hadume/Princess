#> asset.lib:mob/summon/equipments
#
# @within function asset.lib:mob/summon/main

## アイテムを生成
    $function #asset:item/create with storage asset:mob $(equipment)[$(index)]

## アイテムを移行
    $execute in overworld run data modify storage asset:mob $(equipment)[$(index)] set from block 0 -64 0 Items[0]
