#> asset.lib:magic/cast/common/modify_type_value/multiple
# Multipleの数値を調整
# @within function asset.lib:magic/cast/common/

## 数値を取得
	execute store result score #Value Temp run data get storage asset:magic Raw.Multiple

## 調整
	scoreboard players operation #Value Temp += @s Mgc.Multiple

## 保存
	execute store result storage asset:magic Multiple int 1 run scoreboard players get #Value Temp
