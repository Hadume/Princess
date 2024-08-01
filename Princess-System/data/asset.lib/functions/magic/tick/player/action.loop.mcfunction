#> asset.lib:magic/tick/player/action.loop
#
# @within function asset.lib:magic/tick/player/
# @private

##
	execute if data storage asset:temp MagicCopy[-1].Activating run data modify storage asset:magic ID set from storage asset:temp MagicCopy[-1].ID
	execute if data storage asset:temp MagicCopy[-1].Activating run function #asset:magic/tick/player
## データを追加
	data remove storage asset:temp MagicCopy[-1]
## ループ
	execute if data storage asset:temp MagicCopy[] run function asset.lib:magic/tick/player/action.loop
