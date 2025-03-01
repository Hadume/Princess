#> menu:magic/root/
# 魔法メニューの動作
# @within function menu:magic/

## どこかをクリックしたら
	execute if items entity @s player.cursor *[custom_data~{Menu:{Back:1b}}] run return run function menu:magic/back
	### 魔法をセットする
		execute if items entity @s player.cursor *[custom_data~{Menu:{Magic:{Click:1b}}}] run data modify storage temp: Menu set value 3100
		execute if items entity @s player.cursor *[custom_data~{Menu:{Magic:{ClickS:1b}}}] run data modify storage temp: Menu set value 3200
		execute if items entity @s player.cursor *[custom_data~{Menu:{Magic:{Offhand:1b}}}] run data modify storage temp: Menu set value 3300
		execute if items entity @s player.cursor *[custom_data~{Menu:{Magic:{OffhandS:1b}}}] run data modify storage temp: Menu set value 3400
		execute if data storage temp: Menu run return run function menu:magic/root/set/


## 杖が変わっていたら
	execute store success storage temp: Changed byte 1 run data modify storage dat: _.Menu.Magic.Wand set from storage api: Inventory[{Slot:22b}]
	execute store success storage temp: Changed byte 1 if data storage dat: _.Menu.Magic.Wand unless data storage api: Inventory[{Slot:22b}] run data remove storage dat: _.Menu.Magic.Wand
	execute if data storage temp: {Changed:1b} run function menu:magic/root/ui/

## いらないアイテムを消す
	data remove storage api: Inventory[{Slot:22b}]

## 欠けていたら修復
	execute unless score #InvCount Temp matches 26 run function menu:-common/repair {Parent:"magic",Child:"root"}

## 一時使用Storageを削除
	execute if data storage temp: Changed run data remove storage temp: Changed
