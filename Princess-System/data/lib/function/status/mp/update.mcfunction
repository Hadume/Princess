#> lib:status/mp/update
# MPを更新
# @public

#> ScoreHolder
# @private
	#declare score_holder #MP.Display

## 回復
	execute unless score @s MP.Rgn.Timer matches 1.. if score @s MP < @s MP.Max run scoreboard players operation @s MP.Rgn.Timer = @s MP.Rgn.Intrvl
