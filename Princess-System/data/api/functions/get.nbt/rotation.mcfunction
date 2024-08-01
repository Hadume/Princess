#> api:get.nbt/rotation
# Rotationを保存
# @input as player
# @output storage api: Rotation
# @api

## 個人ストレージを呼ぶ
	function data:please
##
	execute store success score #LeastTime Temp store result storage data: _.NBT.Rotation.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run data modify storage data: _.NBT.Rotation.Data set from entity @s Rotation
## データを保存
	execute if data storage data: {Selector:"Player"} run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Rotation set from storage data: _.NBT.Rotation
	execute if data storage data: {Selector:"Entity"} run data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Rotation set from storage data: _.NBT.Rotation
## Rotationをコピー
	data modify storage api: Rotation set from storage data: _.NBT.Rotation.Data
