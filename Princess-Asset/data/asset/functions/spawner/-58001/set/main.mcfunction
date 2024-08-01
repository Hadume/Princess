#> asset:spawner/-58001/set/main
#
# @within function asset:spawner/-58001/set/

## 本体
	execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["Spawner","Spawner.Init"]}
## 何がスポーンするか; List.Compound
	data modify storage asset:spawner Data set value [{ID:-53001}]
## 何体スポーンするか; Int
	data modify storage asset:spawner Count set value {Min:1,Max:5}
## スポーンまでの時間; Int
	data modify storage asset:spawner Delay set value {Min:300,Max:400}
## 範囲; float
	data modify storage asset:spawner Range set value 4.0f
## 周囲のMOBの最大数; int
	data modify storage asset:spawner MaxNearbyEntities set value 6
## 稼働範囲; float
	data modify storage asset:spawner RequiredPlayerRange set value 8.0f
## 初期化
	function asset.lib:spawner/set/check.condition
