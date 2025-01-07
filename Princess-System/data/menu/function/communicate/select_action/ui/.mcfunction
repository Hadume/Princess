#> menu:communicate/select_action/ui/
# コミュニケートの行動選択のUI
# @within function menu:_common/repair

say communicate:select_action.ui

##
	loot replace entity @s inventory.0 loot menu:communicate/select_action/

## プレイヤーヘッドを設置
	data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage dat: _.Menu.Communicate.SelectedPlayer
	item replace entity @s inventory.4 from entity 0-0-1-0-0 armor.head
