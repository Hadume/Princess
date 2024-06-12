#> lib:status/hp/update/main
# HPを更新
# @within function lib:status/hp/update/

#> ScoreHolder
# @private
 #declare score_holder #HP.Display

## 表示
  scoreboard players set #HP.Display Temp 2000
  scoreboard players operation #HP.Display Temp *= #HP.Copy Temp
  scoreboard players operation #HP.Display Temp /= @s HP.Max
  scoreboard players operation @s ScoreToHealth = #HP.Display Temp
## プレイヤーを回復
  execute if entity @s[type=player] if score #HP.Copy Temp < @s HP.Max run scoreboard players operation @s HP.Rcvr.Timer = @s HP.Rcvr.Intrvl
## MOBのステータス表示
  execute if entity @s[type=!player] run function api:display/mob.name
## 一時使用ScoreHolderをリセット
  scoreboard players reset #HP.Display
