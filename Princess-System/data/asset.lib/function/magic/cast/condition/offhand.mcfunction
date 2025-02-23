#> asset.lib:magic/cast/condition/offhand
# オフハンド で魔法を発動
# @within function asset.lib:magic/cast/

## 数値をコピー
	scoreboard players operation #CT Temp = @s CT.Offhand
	data modify storage asset:magic ID set from storage dat: _.Magic[2].ID

## 魔法を発動
	function asset.lib:magic/cast/condition/-common

## クールタイムを設定
	execute if data storage asset:magic Cooltime store result score @s CT.Offhand run data get storage asset:magic Cooltime
