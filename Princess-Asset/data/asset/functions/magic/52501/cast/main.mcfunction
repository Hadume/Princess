#> asset:magic/52501/cast/main
#
# @within function asset:magic/52501/cast/check.condition

## 範囲内のMobを特定
	function asset.lib:magic/action/range/
##
	execute as @e[tag=Lib.InRange] store result score @s TimeLock run data get storage asset:magic Duration
	execute as @e[tag=Lib.InRange] run data modify entity @s NoAI set value 1b
## tick処理
	schedule function asset:magic/52501/tick/main 1t
## 音を鳴らす
	execute at @s run playsound block.chain.place master @a
	execute at @s run playsound block.chain.break master @a ~ ~ ~ 0.25 0.5
