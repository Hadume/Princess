#> api:get.nbt/pos
# Posを保存
# @input as player
# @output storage api: Pos
# @api

## 個人ストレージを呼ぶ
	function data:please
##
	execute store success score #LeastTime Temp store result storage data: _.NBT.Pos.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run data modify storage data: _.NBT.Pos.Data set from entity @s Pos
## データを保存
	execute if data storage data: {Selector:"Player"} run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Pos set from storage data: _.NBT.Pos
	execute if data storage data: {Selector:"Entity"} run data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Pos set from storage data: _.NBT.Pos
## Posをコピー
	data modify storage api: Pos set from storage data: _.NBT.Pos.Data
