#> api:get.nbt/rotation
# Rotationを保存
# @input as player
# @output storage api: Rotation
# @within tag/function api:get.nbt/rotation

## 個人ストレージを呼ぶ
	function #api:e_dat/please

##
	execute store success score #LeastTime Temp store result storage dat: _.NBT.Rotation.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run data modify storage dat: _.NBT.Rotation.Data set from entity @s Rotation

## Rotationをコピー
	data modify storage api: Rotation set from storage dat: _.NBT.Rotation.Data
