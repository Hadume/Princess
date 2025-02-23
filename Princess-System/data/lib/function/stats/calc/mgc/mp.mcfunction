#> lib:stats/calc/mp
# 魔法、消費魔力
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s Mgc.MP.Base

## データをコピー
	data modify storage temp: Stats append from storage temp: Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"Mgc.MP"}]
	data modify storage temp: Stats append from storage temp: Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"Mgc.MP"}]

## 追加効果があったら
	execute if data storage temp: Stats[] run function lib:stats/calc/-common/

## ステータスを反映
	scoreboard players operation @s Mgc.MP = #Amount Temp
