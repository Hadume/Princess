#> asset.lib:magic/type/modify_type_value/range
# rangeの数値を調整
# @within function asset.lib:magic/type/

## 数値を取得
    execute store result score #value temp run data get storage asset:magic range 100

## 調整
    scoreboard players operation #value temp += @s mgcRange

## 保存
    execute store result storage asset:magic range float 0.01 run scoreboard players get #value temp
