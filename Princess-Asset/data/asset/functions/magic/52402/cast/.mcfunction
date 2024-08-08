#> asset:magic/52402/cast/
#
# @within function asset:magic/cast

#> ScoreHolder
# @private
 #declare score_holder #HP.Rcvr

## 範囲内のMobを特定
	function asset.lib:magic/action/range/
##
	data modify storage lib: RcvrHP.Amount set from storage asset:magic Amount
	execute as @e[tag=Lib.InRange] run function lib:status/hp/recover/
## 音
	execute at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2
## 一時使用ScoreHolderをリセット
	scoreboard players reset #HP.Rcvr
