#> asset.lib:spawner/tick/spawn
# スポーンできるか確認
# @within function asset.lib:spawner/tick/

## データをコピー
	data modify storage temp: data set from entity @s data

## 範囲内にプレイヤーがいるか確認
	data modify storage lib: Range.Amount set from storage temp: data.RequiredPlayerRange
	data modify storage lib: Range merge value {Targets:["Player"],Pierce:1}
	function #lib:range

## 範囲内のMOB数の確認
	execute store result storage lib: Range.Amount float 0.01 run data get storage temp: data.Range 200
	data modify storage lib: Range.Pierce set from storage temp: data.MaxNearbyEntities
	data modify storage lib: Range.Targets set value ["Enemy"]
	function #lib:range

## スポーン
	execute unless data storage lib: {Range:{Pierced:0}} if entity @a[tag=Lib.InRange] run function asset.lib:spawner/spawn/

## 範囲内tagを削除
	execute as @e[tag=Lib.InRange] run tag @s remove Lib.InRange

## 一時使用Storageを削除
	data remove storage temp: data
