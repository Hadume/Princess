#> asset.lib:magic/cast/condition/offhand
# オフハンド で魔法を発動
# @within function asset.lib:magic/cast/

## 数値をコピー
	scoreboard players operation #CT Temp = @s CT.Offhand
	data modify storage asset:magic ID set from storage player: Offhand.components."minecraft:custom_data".Magic[-2]

## 魔法を発動
	execute unless data storage asset:magic {ID:0} run function asset.lib:magic/cast/condition/-common

## クールタイムを設定
	execute if data storage asset:magic Cooltime store result score @s CT.Offhand run data get storage asset:magic Cooltime
