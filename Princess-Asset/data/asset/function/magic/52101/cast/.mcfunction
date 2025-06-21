#> asset:magic/52101/cast/
# 魔法を発動
# @within function asset:magic/cast

## 発動数を取得
    execute store result score #multiple temp run data get storage asset:magic multiple

## 本体
    function asset:magic/52101/cast/spell.loop

## 音を鳴らす
    playsound item.firecharge.use master @a ~ ~ ~ 0.5 1

## 一時使用scoreHolderをリセット
    scoreboard players reset #multiple temp
