#> asset.lib:mob/summon/equipments/mainhand
# メインハンド
# @within function asset.lib:mob/summon/main

## IDをコピー
	data modify storage asset:item ID set from storage asset:mob Weapon.Mainhand.ID
## アイテムを生成
	function #asset:item/create
## アイテムを移行
	data modify storage asset:mob Weapon.Mainhand set from block 0 -64 0 Items[0]
