#> asset.lib:magic/cast/spell/display
# 表示用Entityを初期化
# @within function asset.lib:magic/cast/spell/main

#> ScoreHolder
# @private
	#declare score_holder #HalfRange
	#declare score_holder #Translation.Y
	#declare score_holder #Translation
	#declare score_holder #Rotation.Y
	#declare score_holder #Root2
	#declare score_holder #Pi
#> calcLibrary
# @private
	#declare storage math:
	#declare tag/function #math:cos

## データを取得
	execute as @a[tag=This,limit=1] run function api:get.nbt/rotation

## 向きを変更
	data modify entity @s Rotation[0] set from storage api: Rotation[0]

## データを用意
	### サイズ
		data modify storage temp: transformation.scale set value [0.0f,0.0f,0.0f]
		data modify storage temp: transformation.scale[] set from storage asset:magic Range

	### 位置
		data modify storage temp: transformation.translation set value [0.0f,0.0f,0.0f]
		execute store result score #Root2 Temp run data get storage main: Const.Root2 1000
		execute store result score #HalfRange Temp run data get storage asset:magic Range 50
		#### X
			execute store result storage temp: transformation.translation[0] float -0.005 run data get storage asset:magic Range 100

		#### Y
			execute store result score #Rotation.Y Temp run data get storage api: Rotation[1] 100
			scoreboard players add #Rotation.Y Temp 4500
			execute store result storage math: in int 0.01 run scoreboard players get #Rotation.Y Temp
			function #math:cos
			execute store result score #Translation Temp run data get storage math: out 1000
			scoreboard players operation #Translation Temp *= #Root2 Temp
			scoreboard players operation #Translation Temp *= #HalfRange Temp
			scoreboard players add #Translation Temp 100000000
			execute store result storage temp: transformation.translation[1] float -0.00000001 run scoreboard players get #Translation Temp

		#### Z
			execute store result score #Rotation.Y Temp run data get storage api: Rotation[1] 100
			scoreboard players remove #Rotation.Y Temp 4500
			execute store result storage math: in int 0.01 run scoreboard players get #Rotation.Y Temp
			function #math:cos
			execute store result score #Translation Temp run data get storage math: out 1000
			scoreboard players operation #Translation Temp *= #Root2 Temp
			scoreboard players operation #Translation Temp *= #HalfRange Temp
			execute store result storage temp: transformation.translation[2] float -0.00000001 run scoreboard players get #Translation Temp



## 回転
	### データを用意
		data modify storage temp: transformation.right_rotation set value {axis:[1.0f,0.0f,0.0f],angle:0.0f}

	### 向きを取得
		execute store result score #Rotation.Y Temp run data get storage api: Rotation[1] 100

	### -31400 .. 31400
		execute store result score #Pi Temp run data get storage main: Const.Pi 10000
		scoreboard players operation #Rotation.Y Temp *= #Pi Temp
		scoreboard players operation #Rotation.Y Temp /= #18000 Const

	###
		execute store result storage temp: transformation.right_rotation.angle float 0.0001 run scoreboard players get #Rotation.Y Temp


## 代入
	data modify entity @s transformation merge from storage temp: transformation

## 初期化tagを削除
	tag @s remove Spell.Init

## 一時使用ScoreHolderをリセット
	scoreboard players reset #HalfRange
	scoreboard players reset #Translation
	scoreboard players reset #Translation.Y
	scoreboard players reset #Rotation.Y
	scoreboard players reset #Root2
	scoreboard players reset #Pi

## 一時使用Storageを削除
	data remove storage temp: transformation
