#> lib:status/mp/update
# MPを更新
# @public

#> ScoreHolder
# @private
 #declare score_holder #MP.Display
## 表示
  scoreboard players set #MP.Display Temp 2000
  scoreboard players operation #MP.Display Temp *= @s MP
  scoreboard players operation #MP.Display Temp /= @s MP.Max
  scoreboard players operation @s ScoreToHealth = #MP.Display Temp
## 回復
  execute if score @s MP < @s MP.Max run scoreboard players operation @s MP.Rcvr.Timer = @s MP.Rcvr.Intrvl
## 一時使用ScoreHolderをリセット
  scoreboard players reset #MP.Display
