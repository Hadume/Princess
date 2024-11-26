#> player:regen/hp/main
# HPを回復
# @within function player:regen/hp/tick

#> ScoreHolder
# @private
	#declare score_holder #HP.RgnPer.Copy

## 回復値
	scoreboard players operation #HP.RgnPer.Copy Temp = @s HP.Rgn.Per
	scoreboard players operation #HP.RgnPer.Copy Temp *= @s HP.Max
	scoreboard players operation #HP.RgnPer.Copy Temp /= #100 Const
	execute store result storage lib: RcvrHP.Amount int 1 run scoreboard players get #HP.RgnPer.Copy Temp

## 回復
	function #lib:status/hp/recover

## 一時使用ScoreHolderをリセット
	scoreboard players reset #HP.RgnPer.Copy
