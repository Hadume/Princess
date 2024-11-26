#> lib:spread/main
# MOBを拡散させる
# @within function lib:spread/

#> ScoreHolder.Temp
# @within function lib:spread/**
	#declare score_holder #Spread.XZ-1
	#declare score_holder #Spread.XZ-2
	#declare score_holder #Spread.Y-1
	#declare score_holder #Spread.Y-2
	#declare score_holder #Spread
	#declare score_holder #Pos.X
	#declare score_holder #Pos.Y
	#declare score_holder #Pos.Z

## Posを取得
	execute if data storage lib: Spread.At run data modify storage temp: Pos set from storage lib: Spread.At
	execute unless data storage lib: Spread.At run function #api:get.nbt/pos
	execute unless data storage lib: Spread.At run data modify storage temp: Pos set from storage api: Pos

## 拡散値を取得
	### XZ
		execute if data storage lib: Spread.Amount[0] store result score #Spread.XZ-1 Temp run data get storage lib: Spread.Amount[0] 100
		execute unless data storage lib: Spread.Amount[0] store result score #Spread.XZ-1 Temp run data get storage lib: Spread.Amount 100
		scoreboard players operation #Spread.XZ-2 Temp = #Spread.XZ-1 Temp
		scoreboard players operation #Spread.XZ-1 Temp *= #2 Const
		execute if score #Spread.XZ-1 Temp matches 0 run scoreboard players set #Spread.XZ-1 Temp 1

	### Y
		execute if data storage lib: Spread.Amount[1] store result score #Spread.Y-1 Temp run data get storage lib: Spread.Amount[1] 100
		execute unless data storage lib: Spread.Amount[1] store result score #Spread.Y-1 Temp run data get storage lib: Spread.Amount 100
		scoreboard players operation #Spread.Y-2 Temp = #Spread.Y-1 Temp
		scoreboard players operation #Spread.Y-1 Temp *= #2 Const
		execute if score #Spread.Y-1 Temp matches 0 run scoreboard players set #Spread.Y-1 Temp 1


## データを用意
	data modify storage temp: Pos1 set value [0.0d,0.0d,0.0d]

## 座標を計算
	execute store result score #Pos.X Temp run data get storage temp: Pos[0] 100
	execute store result score #Pos.Y Temp run data get storage temp: Pos[1] 100
	execute store result score #Pos.Z Temp run data get storage temp: Pos[2] 100
	### X
		execute store result score #Spread Temp run random value 1..
		scoreboard players operation #Spread Temp %= #Spread.XZ-1 Temp
		scoreboard players operation #Spread Temp -= #Spread.XZ-2 Temp
		execute store result storage temp: Pos1[0] double 0.01 run scoreboard players operation #Pos.X Temp += #Spread Temp

	### Z
		execute store result score #Spread Temp run random value 1..
		scoreboard players operation #Spread Temp %= #Spread.XZ-1 Temp
		scoreboard players operation #Spread Temp -= #Spread.XZ-2 Temp
		execute store result storage temp: Pos1[2] double 0.01 run scoreboard players operation #Pos.Z Temp += #Spread Temp

	### Y
		execute store result score #Spread Temp run random value 1..
		scoreboard players operation #Spread Temp %= #Spread.Y-1 Temp
		scoreboard players operation #Spread Temp -= #Spread.Y-2 Temp
		execute store result storage temp: Pos1[1] double 0.01 run scoreboard players operation #Pos.Y Temp += #Spread Temp


## 座標を代入
	execute if entity @s[type=!player] run data modify entity @s Pos set from storage temp: Pos1

## 地面に設置させる
	execute if data storage lib: {Spread:{OnGround:1b}} run function lib:spread/on_ground/

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Spread.XZ-1
	scoreboard players reset #Spread.XZ-2
	scoreboard players reset #Spread.Y-1
	scoreboard players reset #Spread.Y-2
	scoreboard players reset #Spread
	scoreboard players reset #Pos.X
	scoreboard players reset #Pos.Y
	scoreboard players reset #Pos.Z

## 一時使用Storageを削除
	data remove storage temp: Pos
	data remove storage temp: Pos1
