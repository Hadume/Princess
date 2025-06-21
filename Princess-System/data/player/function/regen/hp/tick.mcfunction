#> player:regen/hp/tick
# 体力回復中
# @within function main:tick/player

## スコアを減らす
    scoreboard players remove @s hpRgnTimer 1

## 回復
    execute if entity @s[scores={hpRgnTimer=..0}] run function player:regen/hp/main
