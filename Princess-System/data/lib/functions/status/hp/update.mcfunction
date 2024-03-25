#> lib:status/hp/update
# HPを更新
# @public

#> ScoreHolder
# @private
 #declare score_holder #HP.Display
## 表示
  scoreboard players set #HP.Display Temp 2000
  scoreboard players operation #HP.Display Temp *= @s HP
  scoreboard players operation #HP.Display Temp /= @s HP.Max
  scoreboard players operation @s ScoreToHealth = #HP.Display Temp
## 回復
  execute if score @s HP < @s HP.Max run scoreboard players operation @s HP.Rcvr.Timer = @s HP.Rcvr.Intrvl
## 一時使用ScoreHolderをリセット
  scoreboard players reset #HP.Display
