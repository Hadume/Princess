#> asset.lib:spawner/spawn/
# スポーン
# @within function asset.lib:spawner/tick/spawn

#> ScoreHolder
# @within function asset.lib:spawner/spawn/*
	#declare score_holder #Spawn.Count
	#declare score_holder #List.Length
#> ScoreHolder.Private
# @private
	#declare score_holder #Count.Min
	#declare score_holder #Count.Max

## データをコピー
	data modify storage temp: dataCopy set from entity @s data

## 何体スポーンさせるか
	### 数値を取得
		execute store result score #Count.Min Temp run data get storage temp: dataCopy.Count.Min
		execute store result score #Count.Max Temp run data get storage temp: dataCopy.Count.Max

	### ランダム
		scoreboard players operation #Count.Max Temp -= #Count.Min Temp
		scoreboard players add #Count.Max Temp 1
		execute store result score #Rand Temp run random value 1..
		scoreboard players operation #Rand Temp %= #Count.Max Temp

	### 値を設定
		scoreboard players operation #Count.Min Temp += #Rand Temp
		scoreboard players operation #Spawn.Count Temp = #Count.Min Temp


## MOBを召喚
	function asset.lib:spawner/spawn/main.loop

## 次のスポーン
	function asset.lib:spawner/common/set.delay

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Count.Min
	scoreboard players reset #Count.Max
	scoreboard players reset #Spawn.Count
	scoreboard players reset #List.Length
	scoreboard players reset #Rand

## 一時使用Storageを削除
	data remove storage temp: dataCopy
