#> menu:communicate/select_action/ui/
# コミュニケートの行動選択のUI
# @within function menu:_common/repair

say communicate:select_action.ui

## プレイヤーヘッドを設置
	data remove block 0 -64 0 Items
	data modify block 0 -64 0 Items append from storage dat: _.Menu.Communicate.SelectedPlayer
	loot replace entity @s inventory.4 mine 0 -64 0 debug_stick

##
	###
		loot replace entity @s inventory.0 loot menu:common/back
		loot replace entity @s inventory.1 loot menu:common/frame.gray
		loot replace entity @s inventory.2 loot menu:common/frame.gray
		loot replace entity @s inventory.3 loot menu:common/frame.gray
		#loot replace entity @s inventory.4 loot menu:common/frame.gray
		loot replace entity @s inventory.5 loot menu:common/frame.gray
		loot replace entity @s inventory.6 loot menu:common/frame.gray
		loot replace entity @s inventory.7 loot menu:common/frame.gray
		loot replace entity @s inventory.8 loot menu:common/frame.black

	###
		loot replace entity @s inventory.9 loot menu:common/frame.black
		loot replace entity @s inventory.10 loot menu:common/frame.gray
		loot replace entity @s inventory.11 loot menu:communicate/select_action/party
		loot replace entity @s inventory.12 loot menu:common/frame.gray
		loot replace entity @s inventory.13 loot menu:common/frame.gray
		loot replace entity @s inventory.14 loot menu:common/frame.gray
		loot replace entity @s inventory.15 loot menu:communicate/select_action/trade
		loot replace entity @s inventory.16 loot menu:common/frame.gray
		loot replace entity @s inventory.17 loot menu:common/frame.black

	###
		loot replace entity @s inventory.18 loot menu:common/frame.black
		loot replace entity @s inventory.19 loot menu:common/frame.gray
		loot replace entity @s inventory.20 loot menu:common/frame.gray
		loot replace entity @s inventory.21 loot menu:common/frame.gray
		loot replace entity @s inventory.22 loot menu:common/frame.gray
		loot replace entity @s inventory.23 loot menu:common/frame.gray
		loot replace entity @s inventory.24 loot menu:common/frame.gray
		loot replace entity @s inventory.25 loot menu:common/frame.gray
		loot replace entity @s inventory.26 loot menu:common/frame.black
