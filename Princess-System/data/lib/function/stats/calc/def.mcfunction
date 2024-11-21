#> lib:stats/calc/def
# 防御力
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s DEF.Base

## データをコピー
	data modify storage temp: Stats append from storage temp: Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"DEF"}]
	data modify storage temp: Stats append from storage temp: Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"DEF"}]

## 追加効果があったら
	execute if data storage temp: Stats[] run function lib:stats/calc/_common/

## ステータスを反映
	scoreboard players operation @s DEF = #Amount Temp
