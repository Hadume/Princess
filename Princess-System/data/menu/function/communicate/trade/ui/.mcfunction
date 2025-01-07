#> menu:communicate/trade/ui/
# UI
# @within function
#   menu:_common/repair
#   menu:communicate/trade/decide/timer/tick/

say Communicate:Trade.UI

## 枠
	loot replace entity @s inventory.0 loot menu:back
	loot replace entity @s inventory.4 loot menu:frame.gray
	loot replace entity @s inventory.8 loot menu:frame.black
	loot replace entity @s inventory.13 loot menu:frame.gray
	loot replace entity @s inventory.22 loot menu:frame.gray

## 自分の頭
	loot replace entity @s inventory.9 loot menu:communicate/player_head

## 決定状況を表示
	loot replace entity @s inventory.18 loot menu:communicate/trade/display/this

## 相手の状態を表示
	tag @s add This
	execute as @a if score @s ID = @a[tag=This,limit=1] Trade.With run function menu:communicate/trade/ui/trader
	tag @s remove This

## 相手トレーダーのアイテムを表示
	function #api:e_dat/please
	data modify storage temp: TradeItems set from storage dat: _.Menu.Communicate.TradeItems
	###
		execute unless data storage temp: TradeItems[{Slot:10b}].id run loot replace entity 0-0-1-0-0 armor.head loot menu:frame.light_gray
		execute if data storage temp: TradeItems[{Slot:10b}].id run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage temp: TradeItems[{Slot:10b}]
		item replace entity @s inventory.5 from entity 0-0-1-0-0 armor.head

	###
		execute unless data storage temp: TradeItems[{Slot:11b}].id run loot replace entity 0-0-1-0-0 armor.head loot menu:frame.light_gray
		execute if data storage temp: TradeItems[{Slot:11b}].id run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage temp: TradeItems[{Slot:11b}]
		item replace entity @s inventory.6 from entity 0-0-1-0-0 armor.head

	###
		execute unless data storage temp: TradeItems[{Slot:12b}].id run loot replace entity 0-0-1-0-0 armor.head loot menu:frame.light_gray
		execute if data storage temp: TradeItems[{Slot:12b}].id run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage temp: TradeItems[{Slot:12b}]
		item replace entity @s inventory.7 from entity 0-0-1-0-0 armor.head

	###
		execute unless data storage temp: TradeItems[{Slot:19b}].id run loot replace entity 0-0-1-0-0 armor.head loot menu:frame.light_gray
		execute if data storage temp: TradeItems[{Slot:19b}].id run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage temp: TradeItems[{Slot:19b}]
		item replace entity @s inventory.14 from entity 0-0-1-0-0 armor.head

	###
		execute unless data storage temp: TradeItems[{Slot:20b}].id run loot replace entity 0-0-1-0-0 armor.head loot menu:frame.light_gray
		execute if data storage temp: TradeItems[{Slot:20b}].id run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage temp: TradeItems[{Slot:20b}]
		item replace entity @s inventory.15 from entity 0-0-1-0-0 armor.head

	###
		execute unless data storage temp: TradeItems[{Slot:21b}].id run loot replace entity 0-0-1-0-0 armor.head loot menu:frame.light_gray
		execute if data storage temp: TradeItems[{Slot:21b}].id run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage temp: TradeItems[{Slot:21b}]
		item replace entity @s inventory.16 from entity 0-0-1-0-0 armor.head

	###
		execute unless data storage temp: TradeItems[{Slot:28b}].id run loot replace entity 0-0-1-0-0 armor.head loot menu:frame.light_gray
		execute if data storage temp: TradeItems[{Slot:28b}].id run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage temp: TradeItems[{Slot:28b}]
		item replace entity @s inventory.23 from entity 0-0-1-0-0 armor.head

	###
		execute unless data storage temp: TradeItems[{Slot:29b}].id run loot replace entity 0-0-1-0-0 armor.head loot menu:frame.light_gray
		execute if data storage temp: TradeItems[{Slot:29b}].id run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage temp: TradeItems[{Slot:29b}]
		item replace entity @s inventory.24 from entity 0-0-1-0-0 armor.head

	###
		execute unless data storage temp: TradeItems[{Slot:30b}].id run loot replace entity 0-0-1-0-0 armor.head loot menu:frame.light_gray
		execute if data storage temp: TradeItems[{Slot:30b}].id run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage temp: TradeItems[{Slot:30b}]
		item replace entity @s inventory.25 from entity 0-0-1-0-0 armor.head


## 一時使用Storageを削除
	data remove storage temp: TradeItems
