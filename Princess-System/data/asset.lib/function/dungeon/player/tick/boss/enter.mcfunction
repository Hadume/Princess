#> asset.lib:dungeon/player/tick/boss/enter
# ボス戦に入る前の演出
# @within function asset.lib:dungeon/player/tick/main

## スコアをコピー
    scoreboard players operation #dungeonbossEnter temp = @s dungeonbossEnter

## スコアを減らす
    scoreboard players remove #dungeonbossEnter temp 1

## 演出
    execute if score #dungeonbossEnter temp matches 40 run function asset.lib:dungeon/player/boss/enter/-ing/1
    execute if score #dungeonbossEnter temp matches 20 run function asset.lib:dungeon/player/boss/enter/-ing/2
    execute if score #dungeonbossEnter temp matches ..0 run function asset.lib:dungeon/player/boss/enter/-ing/3

## スコアを返す
    scoreboard players operation @s dungeonbossEnter = #dungeonbossEnter temp

## 一時使用scoreHolderをリセット
    scoreboard players reset #dungeonbossEnter temp
