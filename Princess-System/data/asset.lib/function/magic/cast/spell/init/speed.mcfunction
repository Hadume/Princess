#> asset.lib:magic/cast/spell/init/speed
# 速度を持っていたら
# @within function asset.lib:magic/cast/spell/init/

## 速度を代入
	execute store result score @s sm.Speed run data get storage asset:magic Speed 100

## 動くように
	tag @s add SmartMotion
	tag @s add Stick

## 初期化
	execute at @s run function smart_motion:core/tp
