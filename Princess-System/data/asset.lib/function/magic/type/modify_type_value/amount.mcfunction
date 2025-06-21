#> asset.lib:magic/type/modify_type_value/amount
# amountの数値を調整
# @within function asset.lib:magic/type/

## 数値を取得
    execute store result score #value temp run data get storage asset:magic amount

## 調整
    scoreboard players operation #value temp += @s mgcAmount

## 保存
    execute store result storage asset:magic amount int 1 run scoreboard players get #value temp
