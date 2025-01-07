#> menu:storage/root/items/
#
# @within function
#   menu:storage/root/ui/
#   menu:storage/root/page/*

## ストレージのアイテムを出す
	scoreboard players operation #Page Temp = @s Menu
	execute store result storage temp: Page int 1 run scoreboard players operation #Page Temp %= #1000 Const
	function menu:storage/root/items/main with storage temp:

## UI
	function menu:_common/repair {Parent:"storage",Child:"root"}

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Page Temp

## 一時使用Storageを削除
	data remove storage temp: Page
