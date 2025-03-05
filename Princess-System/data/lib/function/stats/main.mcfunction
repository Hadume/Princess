#> lib:stats/main
# ステータスを計算
# @within function lib:stats/

#> ScoreHolder
# @within function lib:stats/**
	#declare score_holder #Amount

## 複合tagより、どのステータスを取得するか
	execute if data storage lib: {Stats:["Physic"]} run data modify storage lib: Stats append from storage lib: Physic[]
	execute if data storage lib: {Stats:["Magic"]} run data modify storage lib: Stats append from storage lib: Magic[]
	execute if data storage lib: {Stats:["Element"]} run data modify storage lib: Stats append from storage lib: Element[]

## データを取得
	execute if entity @s[type=player] run function lib:stats/get.equipments/player
	execute if entity @s[type=!player] run function lib:stats/get.equipments/entity

## 更新
	function lib:stats/calc/loop

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Amount Temp

## 一時使用Storageを削除
	data remove storage temp: Armor
	data remove storage temp: Weapon
	data remove storage lib: Stat
