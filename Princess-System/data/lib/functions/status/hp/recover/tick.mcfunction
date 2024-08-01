#> lib:status/hp/recover/tick
# 体力回復までの間隔
# @within function main:tick/player

## スコアを減らす
	scoreboard players remove @s HP.Rcvr.Timer 1
## 回復
	execute if entity @s[scores={HP.Rcvr.Timer=..0}] run function lib:status/hp/recover/main
