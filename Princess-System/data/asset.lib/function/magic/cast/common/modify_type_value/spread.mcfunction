#> asset.lib:magic/cast/common/modify_type_value/spread
# Spreadの数値を調整
# @within function asset.lib:magic/cast/common/

## 数値を取得
    execute store result score #Value Temp run data get storage asset:magic Raw.Spread 100

## 調整
    scoreboard players operation #Value Temp += @s Mgc.Spread

## 保存
    execute store result storage asset:magic Spread float 0.01 run scoreboard players get #Value Temp
