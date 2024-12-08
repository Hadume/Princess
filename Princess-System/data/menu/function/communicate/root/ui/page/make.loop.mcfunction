#> menu:communicate/root/ui/page/make.loop
# ページデータを作成
# @within function menu:communicate/root/ui/page/
# @private

## アイテム
	execute if data storage temp: PlayerData[] run data modify storage temp: PageData append from storage temp: PlayerData[-1]
	execute unless data storage temp: PlayerData[] run data modify storage temp: PageData append value {id:"light_gray_stained_glass_pane",count:1,components: {"minecraft:hide_tooltip": {}, "minecraft:max_stack_size": 1, "minecraft:custom_data": {Menu: {}}}}

## Slot
	data modify storage temp: PageData[-1].Slot set from storage temp: Slot[0]
	data remove storage temp: Slot[0]

## データを消す
	execute if data storage temp: PlayerData[] run data remove storage temp: PlayerData[-1]

## ループ
	execute if data storage temp: Slot[] run function menu:communicate/root/ui/page/make.loop
