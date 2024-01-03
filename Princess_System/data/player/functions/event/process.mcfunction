#> player:event/process
# 
# @within function player:tick

## タイマーを進行
  scoreboard players remove @s Event.Timer 1
## スコアをコピー
  scoreboard players operation $EventCopy Temp = @s Event
  scoreboard players operation $EventTimerCopy Temp = @s Event.Timer
## イベント
  function lib.asset:event/process
## タイマーが0になったら、リセット
  execute if score @s Event.Timer matches ..0 run scoreboard players reset @s Event.Timer
