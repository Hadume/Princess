#> lib:stats/calc/element/def/dunkel
# 闇属性耐性
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s DEF.Dunkel.Base

## データをコピー
	data modify storage temp: Stats append from storage temp: Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"DEF.Dunkel"}]
	data modify storage temp: Stats append from storage temp: Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"DEF.Dunkel"}]

## 追加効果があったら
	execute if data storage temp: Stats[] run function lib:stats/calc/-common/

## ステータスを反映
	scoreboard players operation @s DEF.Dunkel = #Amount Temp
