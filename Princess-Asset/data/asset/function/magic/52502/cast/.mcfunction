#> asset:magic/52502/cast/
# 魔法を発動
# @within function asset:magic/cast

#> ScoreHolder
# @within function asset:magic/52502/cast/entity
# @private
	#declare score_holder #StoredDamage

##
	data modify storage asset:magic Damage set value 1b
	function asset.lib:magic/action/range/

## HP回復
	data modify storage lib: RcvrHP.Amount set from storage asset:magic StoredDamage
	function lib:status/hp/recover/

## 音を鳴らす
	execute at @s run playsound entity.squid.squirt master @a ~ ~ ~ 1 2

## 一時使用ScoreHolder
	scoreboard players reset #StoredDamage
