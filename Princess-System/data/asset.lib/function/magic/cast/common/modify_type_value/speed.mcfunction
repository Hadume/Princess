#> asset.lib:magic/cast/common/modify_type_value/speed
# Speedの数値を調整
# @within function asset.lib:magic/cast/common/

## 数値を取得
    execute store result score #Value Temp run data get storage asset:magic Raw.Speed 100

## 調整
    scoreboard players operation #Value Temp += @s Mgc.Speed

## 保存
    execute store result storage asset:magic Speed float 0.01 run scoreboard players get #Value Temp
