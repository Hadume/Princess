#> asset.lib:magic/type/modify_type_value/multiple
# multipleの数値を調整
# @within function asset.lib:magic/type/

## 数値を取得
    execute store result score #value temp run data get storage asset:magic multiple

## 調整
    scoreboard players operation #value temp += @s mgcMultiple

## 保存
    execute store result storage asset:magic multiple int 1 run scoreboard players get #value temp
