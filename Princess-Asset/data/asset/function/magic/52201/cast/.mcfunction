#> asset:magic/52201/cast/
# 魔法を発動
# @within function asset:magic/cast

## 本体
    function asset:magic/52201/cast/spell

## 音を鳴らす
    execute at @s run playsound entity.generic.splash master @a ~ ~ ~ 0.5 1
    execute at @s run playsound block.bubble_column.upwards_ambient master @a ~ ~ ~ 0.5 2
