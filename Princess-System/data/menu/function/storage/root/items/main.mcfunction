#> menu:storage/root/items/main
#
# @within function menu:storage/root/items/

## ページが無かったら、ページを作成
	$execute unless data storage dat: _.Menu.Storage[$(Page)] run data modify storage dat: _.Menu.Storage append value []

## ページデータをコピー
	$data modify storage temp: PageItems set from storage dat: _.Menu.Storage[$(Page)]

## Slotの調整
	data modify storage temp: PageItems append from storage menu: Blanks21[]
	execute if data storage temp: PageItems[-22] run function menu:storage/root/items/slot

## データを渡す
	execute in overworld run data remove block 0 -64 0 Items
	execute in overworld run data modify block 0 -64 0 Items append from storage temp: PageItems[]
	execute in overworld run loot replace entity @s inventory.0 27 mine 0 -64 0 debug_stick

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Slot Temp

## 一時使用Storageを削除
	data remove storage temp: PageItems
