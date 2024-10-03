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
	execute if data storage lib: {Stats:["HPMax"]} run function lib:stats/calc/hp.max
	execute if data storage lib: {Stats:["MPMax"]} run function lib:stats/calc/mp.max
	execute if data storage lib: {Stats:["ATK"]} run function lib:stats/calc/atk
	execute if data storage lib: {Stats:["DEF"]} run function lib:stats/calc/def
	execute if data storage lib: {Stats:["Speed"]} run function lib:stats/calc/speed

	execute if data storage lib: {Stats:["ATK.Flamme"]} run function lib:stats/calc/element/atk/flamme
	execute if data storage lib: {Stats:["ATK.Wasser"]} run function lib:stats/calc/element/atk/wasser
	execute if data storage lib: {Stats:["ATK.Wind"]} run function lib:stats/calc/element/atk/wind
	execute if data storage lib: {Stats:["ATK.Licht"]} run function lib:stats/calc/element/atk/licht
	execute if data storage lib: {Stats:["ATK.Dunkel"]} run function lib:stats/calc/element/atk/dunkel
	execute if data storage lib: {Stats:["DEF.Flamme"]} run function lib:stats/calc/element/def/flamme
	execute if data storage lib: {Stats:["DEF.Wasser"]} run function lib:stats/calc/element/def/wasser
	execute if data storage lib: {Stats:["DEF.Wind"]} run function lib:stats/calc/element/def/wind
	execute if data storage lib: {Stats:["DEF.Licht"]} run function lib:stats/calc/element/def/licht
	execute if data storage lib: {Stats:["DEF.Dunkel"]} run function lib:stats/calc/element/def/dunkel

	execute if data storage lib: {Stats:["Mgc.MP"]} run function lib:stats/calc/mgc/mp
	execute if data storage lib: {Stats:["Mgc.Cooltime"]} run function lib:stats/calc/mgc/cooltime
	execute if data storage lib: {Stats:["Mgc.Multiple"]} run function lib:stats/calc/mgc/multiple
	execute if data storage lib: {Stats:["Mgc.Amount"]} run function lib:stats/calc/mgc/amount
	execute if data storage lib: {Stats:["Mgc.Duration"]} run function lib:stats/calc/mgc/duration
	execute if data storage lib: {Stats:["Mgc.Pierce"]} run function lib:stats/calc/mgc/pierce
	execute if data storage lib: {Stats:["Mgc.Spread"]} run function lib:stats/calc/mgc/spread
	execute if data storage lib: {Stats:["Mgc.Range"]} run function lib:stats/calc/mgc/range
	execute if data storage lib: {Stats:["Mgc.Speed"]} run function lib:stats/calc/mgc/speed
## 一時使用ScoreHolderをリセット
	scoreboard players reset #Amount
## 一時使用Storageを削除
	data remove storage lib:temp Armor
	data remove storage lib:temp Weapon
