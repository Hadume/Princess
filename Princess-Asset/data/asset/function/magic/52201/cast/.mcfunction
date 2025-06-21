#> asset:magic/52201/cast/
# 魔法を発動
# @within function asset:magic/cast

## 発動数を取得
    execute store result score #multiple temp run data get storage asset:magic multiple

## 本体
    function asset:magic/52201/cast/spell.loop

## 音を鳴らす
    execute at @s run playsound entity.generic.splash master @a ~ ~ ~ 0.5 1
    execute at @s run playsound block.bubble_column.upwards_ambient master @a ~ ~ ~ 0.5 2

## 一時使用scoreHolderをリセット
    scoreboard players reset #multiple temp
