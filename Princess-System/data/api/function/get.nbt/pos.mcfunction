#> api:get.nbt/pos
# Posを保存
# @input as player
# @output storage api: Pos
# @within tag/function api:get.nbt/pos

## 個人ストレージを呼ぶ
	function #api:e_dat/please

##
	execute store success score #LeastTime Temp store result storage dat: _.NBT.Pos.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run data modify storage dat: _.NBT.Pos.Data set from entity @s Pos

## Posをコピー
	data modify storage api: Pos set from storage dat: _.NBT.Pos.Data
