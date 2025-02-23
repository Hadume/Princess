#> asset.lib:magic/cast/condition/offhand_s
# オフハンド+シフト で魔法を発動
# @within function asset.lib:magic/cast/

## 数値をコピー
	scoreboard players operation #CT Temp = @s CT.OffhandS
	data modify storage asset:magic ID set from storage dat: _.Magic[3].ID

## 魔法を発動
	function asset.lib:magic/cast/condition/-common

## クールタイムを設定
	execute if data storage asset:magic Cooltime store result score @s CT.OffhandS run data get storage asset:magic Cooltime
