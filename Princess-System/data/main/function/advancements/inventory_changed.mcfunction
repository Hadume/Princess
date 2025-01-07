#> main:advancements/inventory_changed
# インベントリーを更新した
# @within function main:tick/player

##
	data modify storage main: InventoryChanged set value 1b

## インベントリーを取得
	function #api:get.nbt/inventory

## オフハンドにアイテムがあったら
	execute if data storage api: {Inventory:[{Slot:-106b}]} run function player:offhand

## インベントリUIを更新
	execute if entity @s[gamemode=adventure] run function menu:

## 一時使用ScoreHolderをリセット
	scoreboard players reset #InvCount Temp

## 一時使用Storageを削除
	data remove storage main: InventoryChanged

## 進捗を剥奪
	advancement revoke @s only main:inventory_changed
