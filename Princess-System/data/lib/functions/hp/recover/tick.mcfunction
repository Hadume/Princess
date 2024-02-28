#> lib:hp/recover/tick
# 
# @within function main:tick/player

## スコアを減らす
  scoreboard players remove @s HP.Rcvr.Timer 1
## 回復
  execute if score @s HP.Rcvr.Timer matches ..0 run function lib:hp/recover/main
