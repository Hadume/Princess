#> lib:spread/on_ground/plus.loop
# プラス方向に移動
# @within function lib:spread/on_ground/
# @private

## tp
	execute unless block ~ ~-0.001 ~ #main:no_collision run tp @s ~ ~ ~
## スコアを減らす
	scoreboard players remove #Spread.Y-2 Temp 1
## ループ
	execute if score #Spread.Y-2 Temp matches 0.. if block ~ ~-0.001 ~ #main:no_collision positioned ~ ~-1 ~ run function lib:spread/on_ground/plus.loop
