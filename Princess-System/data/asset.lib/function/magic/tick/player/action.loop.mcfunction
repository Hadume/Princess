#> asset.lib:magic/tick/player/action.loop
#
# @within function asset.lib:magic/tick/player/
# @private

## ループ終了
	execute unless data storage temp: Magic[] run return 1

##
	execute if data storage temp: Magic[-1].Activating run data modify storage asset:magic ID set from storage temp: Magic[-1].ID
	execute if data storage temp: Magic[-1].Activating run function asset.lib:magic/tick/ with storage asset:magic

## データを追加
	data remove storage temp: Magic[-1]

## ループ
	function asset.lib:magic/tick/player/action.loop
