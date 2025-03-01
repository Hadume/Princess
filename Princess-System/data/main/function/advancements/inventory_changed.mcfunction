#> main:advancements/inventory_changed
# インベントリーを更新した
# @within function main:tick/player

## インベントリーを取得
	function #api:get.nbt/inventory

## オフハンドのアイテムをコピー
	data modify storage main: Offhand set from entity @s Inventory[{Slot:-106b}]

## オフハンドにアイテムがあったら
	execute if data storage main: Offhand run function player:offhand

## インベントリUIを更新
	execute if entity @s[gamemode=adventure] run function menu:

## 進捗を剥奪
	advancement revoke @s only main:inventory_changed

## 一時使用ScoreHolderをリセット
	scoreboard players reset #InvCount Temp

## 一時使用Storageを削除
	data remove storage main: Offhand
