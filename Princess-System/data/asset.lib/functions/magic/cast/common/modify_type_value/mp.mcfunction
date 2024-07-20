#> asset.lib:magic/cast/common/modify_type_value/mp
# MPの数値を調整
# @within function asset.lib:magic/cast/common/

## 数値を取得
  execute store result score #Value Temp run data get storage asset:magic Raw.MP
## 調整
  scoreboard players operation #Value Temp -= @s Mgc.MP
## 0を下回ったら
  execute if score #Value Temp matches ..-1 run scoreboard players set #Value Temp 0
## 保存
  execute store result storage asset:magic MP int 1 run scoreboard players get #Value Temp
