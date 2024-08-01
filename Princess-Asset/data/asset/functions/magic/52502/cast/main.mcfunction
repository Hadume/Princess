#> asset:magic/52502/cast/main
#
# @within function asset:magic/52502/cast/check.condition

#> ScoreHolder
# @within function asset:magic/52502/cast/entity
# @private
 #declare score_holder #StoredDamage

##
	data modify storage asset:magic Damage set value 1b
	function asset.lib:magic/action/range/
## HP回復
	execute store result score #StoredDamage Temp run data get storage asset:magic StoredDamage
	scoreboard players operation @s HP += #StoredDamage Temp
## 音を鳴らす
	execute at @s run playsound entity.squid.squirt master @a ~ ~ ~ 1 2
## 一時使用ScoreHolder
	scoreboard players reset #StoredDamage
