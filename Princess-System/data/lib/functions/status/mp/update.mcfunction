#> lib:status/mp/update
# MPを更新
# @public

#> ScoreHolder
# @private
 #declare score_holder #MP.Display

## 回復
  execute if entity @s[scores={MP.Rcvr.Timer=..0}] if score @s MP < @s MP.Max run scoreboard players operation @s MP.Rcvr.Timer = @s MP.Rcvr.Intrvl
