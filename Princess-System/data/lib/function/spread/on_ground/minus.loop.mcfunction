#> lib:spread/on_ground/minus.loop
# マイナス方向に移動
# @within function lib:spread/on_ground/
# @private

## tp
    execute unless block ~ ~-0.001 ~ #main:no_collision run tp @s ~ ~ ~

## スコアを減らす
    scoreboard players add #spreadY2 temp 1

## ループ
    execute if score #spreadY2 temp matches ..0 if block ~ ~-0.001 ~ #main:no_collision positioned ~ ~1 ~ run function lib:spread/on_ground/minus.loop
