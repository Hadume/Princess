#> asset.lib:mob/summon/equipments
#
# @within function asset.lib:mob/summon/main

## IDを移す
	$data modify storage asset:item ID set from storage asset:mob Armor.$(Parts).ID

## アイテムを生成
	$function #asset:item/create with storage asset:mob Armor.$(Parts)

## アイテムを移行
	$execute in overworld run data modify storage asset:mob Armor.$(Parts) set from block 0 -64 0 Items[0]
