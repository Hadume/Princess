#> lib:stats/calc/multiple
# 魔法、発動数
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s Mgc.Multiple.Base

## データをコピー
	data modify storage temp: Stats append from storage temp: Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"Mgc.Multiple"}]
	data modify storage temp: Stats append from storage temp: Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"Mgc.Multiple"}]

## 追加効果があったら
	execute if data storage temp: Stats[] run function lib:stats/calc/_common/

## ステータスを反映
	scoreboard players operation @s Mgc.Multiple = #Amount Temp
