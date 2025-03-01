#> menu:equipment/root/open
# 装備メニューを開く
# @within function menu:home/root/

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
	function menu:-common/repair {Parent:"equipment",Child:"root"}

## ページ変更しました
	return 2000
