#> menu:magic/root/ui/
# 魔法メニューのUI
# @within function menu:-common/repair

say magic:root/ui

##
	### 1行目
		loot replace entity @s inventory.0 loot menu:back
		loot replace entity @s inventory.1 loot menu:frame.gray
		#loot replace entity @s inventory.2
		loot replace entity @s inventory.3 loot menu:frame.gray
		loot replace entity @s inventory.4 loot menu:frame.gray
		loot replace entity @s inventory.5 loot menu:frame.gray
		#loot replace entity @s inventory.6
		loot replace entity @s inventory.7 loot menu:frame.gray
		loot replace entity @s inventory.8 loot menu:frame.black

	### 2行目
		loot replace entity @s inventory.9 loot menu:frame.black
		loot replace entity @s inventory.10 loot menu:frame.gray
		loot replace entity @s inventory.11 loot menu:frame.gray
		loot replace entity @s inventory.12 loot menu:frame.gray
		#loot replace entity @s inventory.13
		loot replace entity @s inventory.14 loot menu:frame.gray
		loot replace entity @s inventory.15 loot menu:frame.gray
		loot replace entity @s inventory.16 loot menu:frame.gray
		loot replace entity @s inventory.17 loot menu:frame.black

	### 3行目
		loot replace entity @s inventory.18 loot menu:frame.black
		loot replace entity @s inventory.19 loot menu:frame.gray
		#loot replace entity @s inventory.20
		loot replace entity @s inventory.21 loot menu:frame.gray
		loot replace entity @s inventory.22 loot menu:frame.gray
		loot replace entity @s inventory.23 loot menu:frame.gray
		#loot replace entity @s inventory.24
		loot replace entity @s inventory.25 loot menu:frame.gray
		loot replace entity @s inventory.26 loot menu:frame.black


## 魔法設定ボタン
	execute if items entity @s inventory.13 *[custom_data~{Category:"Wand"}] run data modify storage temp: Data set from entity @s Inventory[{Slot:22b}].components."minecraft:custom_data"
	execute unless items entity @s inventory.13 *[custom_data~{Category:"Wand"}] run data modify storage temp: Data set value {Magic:[0,0,0,0]}
	### Click
		function menu:magic/root/ui/icon {Index:-4}
		execute in overworld run item replace entity @s inventory.2 from block 0 -64 0 container.0
		execute in overworld run item modify entity @s inventory.2 menu:magic/root/click

	### ClickS
		function menu:magic/root/ui/icon {Index:-3}
		execute in overworld run item replace entity @s inventory.6 from block 0 -64 0 container.0
		execute in overworld run item modify entity @s inventory.6 menu:magic/root/click_s

	### Offhand
		function menu:magic/root/ui/icon {Index:-2}
		execute in overworld run item replace entity @s inventory.20 from block 0 -64 0 container.0
		execute in overworld run item modify entity @s inventory.20 menu:magic/root/offhand

	### OffhandS
		function menu:magic/root/ui/icon {Index:-1}
		execute in overworld run item replace entity @s inventory.24 from block 0 -64 0 container.0
		execute in overworld run item modify entity @s inventory.24 menu:magic/root/offhand_s


## 一時使用Storageを削除
	data remove storage temp: Data
