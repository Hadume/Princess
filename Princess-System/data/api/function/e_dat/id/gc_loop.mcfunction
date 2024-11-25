#> api:e_dat/id/gc_loop
#
# @within function api:e_dat/id/gc

###################################################

# 赤石愛様の「OhMyDat」を参考にさせていただいております！ #

###################################################

## データを削除
	data modify storage temp: ID set from storage dat: id[0]
	function api:e_dat/id/remove.data with storage temp:

## 割り当て済みIDを削除
	data remove storage dat: id[0]

## 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
	execute store result score #ID Global run data get storage dat: id[0]
	execute if score #ID Global > #ID Temp run function api:e_dat/id/gc_loop
