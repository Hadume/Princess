#> lib:die/entity/
#
# @within function lib:die/

#> ScoreHolder.Temp
# @within function lib:die/entity/**
	#declare score_holder #Exp
	#declare score_holder #Money
	#declare score_holder #ID
#> Tags.Temp
# @within function lib:die/entity/**
	#declare tag Looted

## データ変更
	data remove entity @s CustomName
	data modify entity @s CustomNameVisible set value 0b
	data modify entity @s PersistenceRequired set value 0b

## スコアをコピー
	scoreboard players operation #Exp Temp = @s Exp
	scoreboard players operation #Money Temp = @s Money

## 個人ストレージを呼ぶ
	function #api:e_dat/please

## データをコピー
	data modify storage temp: AttackBy set from storage dat: _.AttackBy

##
	execute if data storage temp: AttackBy[] run function lib:die/entity/loot/loop

## tagを削除
	execute as @a[tag=Looted] run tag @s remove Looted

## kill
	kill @s

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Exp Temp
	scoreboard players reset #Money Temp
	scoreboard players reset #ID Temp

## 一時使用Storageを削除
	data remove storage temp: AttackBy
