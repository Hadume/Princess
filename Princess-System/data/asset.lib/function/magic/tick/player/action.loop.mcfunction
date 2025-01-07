#> asset.lib:magic/tick/player/action.loop
#
# @within function asset.lib:magic/tick/player/
# @private

##
	execute if data storage temp: Magic[-1].Activating run data modify storage asset:magic ID set from storage temp: Magic[-1].ID
	execute if data storage temp: Magic[-1].Activating run function asset:magic/tick with storage asset:magic ID

## データを追加
	data remove storage temp: Magic[-1]

## ループ
	execute if data storage temp: Magic[] run function asset.lib:magic/tick/player/action.loop
