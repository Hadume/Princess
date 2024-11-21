#> asset.lib:spawner/set/main
#
# @within function asset.lib:spawner/set/check.condition

## データを移行
	data modify storage temp: data.Data set from storage asset:spawner Data
	data modify storage temp: data.Count set from storage asset:spawner Count
	data modify storage temp: data.Range set from storage asset:spawner Range
	data modify storage temp: data.Delay set from storage asset:spawner Delay
	data modify storage temp: data.MaxNearbyEntities set from storage asset:spawner MaxNearbyEntities
	data modify storage temp: data.RequiredPlayerRange set from storage asset:spawner RequiredPlayerRange
	###
		data modify entity @s data set from storage temp: data


## 召喚までの間隔
	function asset.lib:spawner/common/set.delay

## 初期化tagを削除
	tag @s remove Spawner.Init

## 一時使用Storageを削除
	data remove storage temp: data
