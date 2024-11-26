#> asset.lib:magic/cast/common/consume.mp
# MPを減らす
# @within function asset.lib:magic/cast/common/

## MPを減らす
	execute store result score #MP.Consume Temp run data get storage asset:magic MP
	scoreboard players operation @s MP -= #MP.Consume Temp
	function #lib:status/mp/update

## 魔法実行可能
	data modify storage asset:magic CanCast set value 1b
