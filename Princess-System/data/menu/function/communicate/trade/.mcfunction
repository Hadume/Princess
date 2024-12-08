#> menu:communicate/trade/
# トレード中
# @within function menu:communicate/

## どこかをクリックしていたら
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Back:1b}}] run return run function menu:communicate/trade/back/
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{TradeDecide:1b}},!minecraft:custom_data~{Menu:{Display:1b}}] run function menu:communicate/trade/decide/timer/
	#execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{CommunicateTrade:1b}}] run function menu:communicate/select_action/trade/

## アイテムを相手の画面に移す
	### Slotのデータ
		data modify storage temp: DisplayItems set value [{Slot:10b},{Slot:11b},{Slot:12b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:28b},{Slot:29b},{Slot:30b}]

	### アイテムをコピー
		data modify storage temp: DisplayItems[{Slot:10b}] set from storage api: Inventory[{Slot:10b}]
		data modify storage temp: DisplayItems[{Slot:11b}] set from storage api: Inventory[{Slot:11b}]
		data modify storage temp: DisplayItems[{Slot:12b}] set from storage api: Inventory[{Slot:12b}]
		data modify storage temp: DisplayItems[{Slot:19b}] set from storage api: Inventory[{Slot:19b}]
		data modify storage temp: DisplayItems[{Slot:20b}] set from storage api: Inventory[{Slot:20b}]
		data modify storage temp: DisplayItems[{Slot:21b}] set from storage api: Inventory[{Slot:21b}]
		data modify storage temp: DisplayItems[{Slot:28b}] set from storage api: Inventory[{Slot:28b}]
		data modify storage temp: DisplayItems[{Slot:29b}] set from storage api: Inventory[{Slot:29b}]
		data modify storage temp: DisplayItems[{Slot:30b}] set from storage api: Inventory[{Slot:30b}]

	## アイテムを表示
		scoreboard players operation #Trade.With.Copy Temp = @s Trade.With
		execute as @a if score @s ID = #Trade.With.Copy Temp run function menu:communicate/trade/ui/save


## いらないアイテムを消す
	data remove storage api: Inventory[{Slot:10b}]
	data remove storage api: Inventory[{Slot:11b}]
	data remove storage api: Inventory[{Slot:12b}]
	data remove storage api: Inventory[{Slot:19b}]
	data remove storage api: Inventory[{Slot:20b}]
	data remove storage api: Inventory[{Slot:21b}]
	data remove storage api: Inventory[{Slot:28b}]
	data remove storage api: Inventory[{Slot:29b}]
	data remove storage api: Inventory[{Slot:30b}]

## 欠けていたら修復
	execute unless score #InvCount Temp matches 18 run data modify storage menu: Function set value {Parent:"communicate",Child:"trade"}
	execute unless score #InvCount Temp matches 18 run function menu:_common/repair with storage menu: Function

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Trade.With.Copy

## 一時使用Storageを削除
	data remove storage temp: DisplayItems
