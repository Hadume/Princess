#> menu:communicate/trade/decide/timer/tick/
# 取引決定まで
# @within function main:tick/player

## タイマーを減らす
	scoreboard players remove @s Trade.DecideTimer 1

## 表示を更新
	loot replace entity @s inventory.18 loot menu:communicate/trade/display/this

## 取引決定したことを相手に知らせる
	execute if entity @s[scores={Trade.DecideTimer=0}] run function menu:communicate/trade/decide/timer/tick/decided/
