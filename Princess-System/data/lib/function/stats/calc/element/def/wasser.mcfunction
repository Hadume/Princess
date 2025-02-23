#> lib:stats/calc/element/def/wasser
# 水属性耐性
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s DEF.Wasser.Base

## データをコピー
	data modify storage temp: Stats append from storage temp: Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"DEF.Wasser"}]
	data modify storage temp: Stats append from storage temp: Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"DEF.Wasser"}]

## 追加効果があったら
	execute if data storage temp: Stats[] run function lib:stats/calc/-common/

## ステータスを反映
	scoreboard players operation @s DEF.Wasser = #Amount Temp
