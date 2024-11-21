#> asset.lib:mob/summon/equipments/feet
# 足装備
# @within function asset.lib:mob/summon/main

## IDをコピー
	data modify storage asset:item ID set from storage asset:mob Armor.Feet.ID

## アイテムを生成
	function #asset:item/create

## アイテムを移行
	data modify storage asset:mob Armor.Feet set from block 0 -64 0 Items[0]
