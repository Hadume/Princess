#> asset.lib:mob/summon/equipments
#
# @within function asset.lib:mob/summon/main

## アイテムを生成
	$function #asset:item/create with storage asset:mob Armor.$(Parts).ID

## アイテムを移行
	$data modify storage asset:mob Armor.$(Parts) set from block 0 -64 0 Items[0]
