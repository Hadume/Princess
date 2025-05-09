#> menu:storage/root/open
#
# @within function menu:home/root/

## アイテムを消す
	loot replace entity @s inventory.1 loot menu:storage/root/clear
	loot replace entity @s inventory.10 loot menu:storage/root/clear
	loot replace entity @s inventory.19 loot menu:storage/root/clear

## ページを仮変更しておく
	scoreboard players set @s Menu 0

## アイテムを設置
	function menu:storage/root/items/

## ページ変更しました
	return 5000
