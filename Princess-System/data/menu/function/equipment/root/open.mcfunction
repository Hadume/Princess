#> menu:equipment/root/open
# 装備メニューを開く
# @within function menu:menu/root/

## スコアを変更
	scoreboard players set @s Menu 2000

## アイテムを消す
	###
		item replace entity @s inventory.1 with air
		item replace entity @s inventory.3 with air
		item replace entity @s inventory.5 with air
		item replace entity @s inventory.7 with air

	###
		item replace entity @s inventory.19 with air
		item replace entity @s inventory.21 with air
		item replace entity @s inventory.23 with air
		item replace entity @s inventory.25 with air


## UI
	function menu:_common/repair {Parent:"equipment",Child:"root"}

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0
