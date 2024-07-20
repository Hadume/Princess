#> asset.lib:magic/cast/common/modify_type_value/duration
# Durationの数値を調整
# @within function asset.lib:magic/cast/common/

## 数値を取得
  execute store result score #Value Temp run data get storage asset:magic Raw.Duration
## 調整
  scoreboard players operation #Value Temp += @s Mgc.Duration
## 保存
  execute store result storage asset:magic Duration int 1 run scoreboard players get #Value Temp
