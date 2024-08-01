#> asset:magic/52302/tick/main
#
# @within function asset:magic/52302/tick/

## MPを減らす
	scoreboard players remove @s MP 1
## データを移行
	data modify storage asset:magic Range set from storage asset:temp MagicCopy[-1].data.Range
	execute if data storage asset:temp MagicCopy[-1].data.Pierce run data modify storage asset:magic Pierce set from storage asset:temp MagicCopy[-1].data.Pierce
	execute if data storage asset:temp MagicCopy[-1].data.Targets run data modify storage asset:magic Targets set from storage asset:temp MagicCopy[-1].data.Targets
##
	function asset.lib:magic/action/range/
##
	execute as @e[tag=Lib.InRange] run data modify entity @s Motion[1] set value 0.0907407489168243d
