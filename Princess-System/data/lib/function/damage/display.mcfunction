#> lib:damage/display
# ダメージ表示
# @within function lib:damage/main

#> Tags
# @within function
#   lib:damage/display
#   lib:damage/schedule.loop
	#declare tag Lib.Damage

## 表示を拡散
	data remove storage lib: Spread.At
	data modify storage lib: Spread.Amount set value [0.1d,0.2d]
	function lib:spread/

## NBTを変更
	data modify entity @s CustomName set from entity @s Item.components.minecraft:item_name
	data modify entity @s CustomNameVisible set value 1b
	data modify entity @s PickupDelay set value 32767s

## tagを追加
	tag @s add Lib.Damage

## 消えるまでのカウント
	schedule function lib:damage/schedule.loop 1t

## 初期化tagを削除
	data remove entity @s Item.components.minecraft:custom_data.Lib.Init
