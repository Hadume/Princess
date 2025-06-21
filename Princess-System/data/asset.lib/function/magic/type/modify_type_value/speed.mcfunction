#> asset.lib:magic/type/modify_type_value/speed
# Speedの数値を調整
# @within function asset.lib:magic/type/

## 数値を取得
    execute store result score #value temp run data get storage asset:magic speed 100

## 調整
    scoreboard players operation #value temp += @s mgcSpeed

## 保存
    execute store result storage asset:magic speed float 0.01 run scoreboard players get #value temp
