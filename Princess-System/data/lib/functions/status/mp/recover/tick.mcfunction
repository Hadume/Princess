#> lib:status/mp/recover/tick
# 
# @within function main:tick/player

## スコアを減らす
  scoreboard players remove @s MP.Rcvr.Timer 1
## 回復
  execute if score @s MP.Rcvr.Timer matches ..0 run function lib:status/mp/recover/main
