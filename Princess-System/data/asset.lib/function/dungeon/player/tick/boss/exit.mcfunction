#> asset.lib:dungeon/player/tick/boss/exit
# ボス戦から出る演出
# @within function asset.lib:dungeon/player/tick/main

## スコアを減らす
    scoreboard players remove @s dungeonbossExit 1

## ダンジョンから出る
    execute if entity @s[scores={dungeonbossExit=..0}] run function #asset.lib:dungeon/exit
