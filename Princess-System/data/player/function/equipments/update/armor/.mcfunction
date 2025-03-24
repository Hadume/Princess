#> player:equipments/update/armor/
# 装備を更新
# @within function main:advancements/inventory_changed

## Slotを設定
	scoreboard players set #Slot Temp 0
	execute store result storage temp: Slot int 1 run scoreboard players get #Slot Temp

##
	function player:equipments/update/armor/loop/ with storage temp:

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Slot Temp
	scoreboard players reset #Changed Temp

## 一時使用Storageを削除
	data remove storage temp: Slot
	data remove storage temp: Armor
