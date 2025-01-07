#> menu:storage/root/open
#
# @within function menu:home/root/

## スコアを変更
	scoreboard players set @s Menu 5000

## アイテムを消す
	loot replace entity @s inventory.1 loot menu:storage/root/clear
	loot replace entity @s inventory.10 loot menu:storage/root/clear
	loot replace entity @s inventory.19 loot menu:storage/root/clear

## アイテムを設置
	function menu:storage/root/items/

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0
