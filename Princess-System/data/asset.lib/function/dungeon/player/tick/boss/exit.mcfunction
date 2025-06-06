#> asset.lib:dungeon/player/tick/boss/exit
# ボス戦から出る演出
# @within function asset.lib:dungeon/player/tick/main

## スコアを減らす
    scoreboard players remove @s DungeonBossExit 1

## ダンジョンから出る
    execute if entity @s[scores={DungeonBossExit=..0}] run function #asset.lib:dungeon/exit
