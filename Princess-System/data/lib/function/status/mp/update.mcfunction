#> lib:status/mp/update
# MPを更新
# @within tag/function lib:status/mp/update

#> ScoreHolder
# @private
	#declare score_holder #MP.Display

## 魔力を持ってなかったら、魔力を最大魔力と同じにする
	execute unless score @s MP = @s MP run scoreboard players operation @s MP = @s MP.Max

## 回復
	execute unless score @s MP.Rgn.Timer matches 1.. if score @s MP < @s MP.Max run scoreboard players operation @s MP.Rgn.Timer = @s MP.Rgn.Intrvl
