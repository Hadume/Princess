#> main:advancements/inventory_changed
# インベントリーを更新した
# @within function main:tick/player

## インベントリーを取得
	function #api:get.nbt/inventory

## ステータスを更新
	data modify storage lib: Stats set value ["Physic", "Magic", "Element"]
	function #lib:stats

## オフハンドにアイテムがあったら
	execute if data storage api: Inventory[{Slot:-106b}] run function player:offhand

## インベントリUIを更新
	execute if entity @s[gamemode=adventure] run function menu:

## 進捗を剥奪
	advancement revoke @s only main:inventory_changed
