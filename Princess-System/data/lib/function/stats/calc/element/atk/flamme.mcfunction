#> lib:stats/calc/element/atk/flamme
# 炎属性攻撃力
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s ATK.Flamme.Base

## データをコピー
	data modify storage temp: Stats append from storage temp: Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"ATK.Flamme"}]
	data modify storage temp: Stats append from storage temp: Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"ATK.Flamme"}]

## 追加効果があったら
	execute if data storage temp: Stats[] run function lib:stats/calc/_common/

## ステータスを反映
	scoreboard players operation @s ATK.Flamme = #Amount Temp
