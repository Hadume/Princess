#> asset.lib:spawner/tick/
#
# @within function main:tick/

## スポーンまでの時間
    execute if entity @s[scores={spawnerDelay=1..}] run scoreboard players remove @s spawnerDelay 1

## スポーンできるか確認
    execute if entity @s[scores={spawnerDelay=..0}] run function asset.lib:spawner/tick/spawn
