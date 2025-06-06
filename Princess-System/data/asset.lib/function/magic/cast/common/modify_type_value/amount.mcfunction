#> asset.lib:magic/cast/common/modify_type_value/amount
# Amountの数値を調整
# @within function asset.lib:magic/cast/common/

## 数値を取得
    execute store result score #Value Temp run data get storage asset:magic Raw.Amount

## 調整
    scoreboard players operation #Value Temp += @s Mgc.Amount

## 保存
    execute store result storage asset:magic Amount int 1 run scoreboard players get #Value Temp
