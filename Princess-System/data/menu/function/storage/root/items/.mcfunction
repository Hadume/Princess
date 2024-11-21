#> menu:storage/root/items/
#
# @within function
#   menu:storage/root/ui/
#   menu:storage/root/page/*

## ストレージのアイテムを出す
	scoreboard players operation #InvPage.Copy Temp = @s Menu
	execute store result storage temp: Page int 1 run scoreboard players operation #InvPage.Copy Temp %= #1000 Const
	function menu:storage/root/items/main with storage temp:

## UI
	data modify storage menu: Function set value {Parent:"storage",Child:"root"}
	function menu:_common/repair with storage menu: Function
