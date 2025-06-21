#> asset.lib:magic/type/modify_type_value/duration
# durationの数値を調整
# @within function asset.lib:magic/type/

## 数値を取得
    execute store result score #value temp run data get storage asset:magic duration

## 調整
    scoreboard players operation #value temp += @s mgcDuration

## 保存
    execute store result storage asset:magic duration int 1 run scoreboard players get #value temp
