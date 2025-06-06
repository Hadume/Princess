#> main:tick/
# 常時実行
# @within tag/function tick

## スポナー
    execute as @e[type=marker,tag=Spawner] at @s run function asset.lib:spawner/tick/

## プレイヤーで常時実行
    execute as @a at @s run function main:tick/player

## 魔法常時実行
    execute as @e[type=armor_stand,tag=Spell] at @s run function asset.lib:magic/tick/spell

## MOBで常時実行
    execute as @e[tag=Enemy] at @s run function mob:tick

## ダンジョンに入る
    execute as @e[type=marker,tag=Dungeon] at @s run function asset.lib:dungeon/marker/tick

## tagを削除する
    execute as @e[tag=Lib.InRange] run tag @s remove Lib.InRange
