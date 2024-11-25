#> api:e_dat/id/gc
# ガーベージコレクタ
# @within function api:e_dat/id/allocate

###################################################

# 赤石愛様の「OhMyDat」を参考にさせていただいております！ #

###################################################

## 前回存在を確認したIDを移動させる
	data modify storage dat: id append from storage dat: id[0]
	data remove storage dat: id[0]

## 割り当て済みID[0]以下の最大値を取得(_ IDに入る)
	execute store result score #ID Temp run data get storage dat: id[0]
	scoreboard players remove #ID Temp 2147483647
	scoreboard players set #ID ID 0
	scoreboard players operation * ID -= #ID Temp
	scoreboard players operation #ID ID > * ID
	scoreboard players operation * ID += #ID Temp

## 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
	scoreboard players operation #ID Temp >< #ID ID
	execute store result score #ID ID run data get storage dat: id[0]
	execute if score #ID ID > #ID Temp run function api:e_dat/id/gc_loop
	scoreboard players operation #ID Temp >< #ID ID

## loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
	### 2prev
		execute store result score #ID Temp run data get storage dat: id[-1]
		execute if score #ID Temp matches 0 run scoreboard players add #ID Temp 268435456
		execute if score #ID ID matches 0 run scoreboard players add #ID Temp 268435456
		execute if score #ID ID matches 0 run scoreboard players add #ID ID 268435456
		scoreboard players operation #ID Temp *= #2 Const

	### 2prev - 2x
		scoreboard players operation #ID Temp -= #ID ID
		scoreboard players operation #ID Temp -= #ID ID

	### 3x - 2prev
		scoreboard players operation #ID ID -= #ID Temp

	### 3x - 2prev - next
		execute store result score #ID Temp run data get storage dat: id[1]
		scoreboard players operation #ID ID -= #ID Temp
		execute if score #ID ID matches -1.. run function api:e_dat/id/gc
