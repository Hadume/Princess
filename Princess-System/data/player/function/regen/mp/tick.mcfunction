#> player:regen/mp/tick
#
# @within function main:tick/player

## スコアを減らす
	scoreboard players remove @s MP.Rgn.Timer 1

## 回復
	execute if entity @s[scores={MP.Rgn.Timer=..0}] run function player:regen/mp/main
