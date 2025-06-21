#> player:regen/mp/tick
#
# @within function main:tick/player

## スコアを減らす
    scoreboard players remove @s mpRgnTimer 1

## 回復
    execute if entity @s[scores={mpRgnTimer=..0}] run function player:regen/mp/main
