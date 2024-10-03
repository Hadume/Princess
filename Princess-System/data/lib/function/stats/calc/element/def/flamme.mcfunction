#> lib:stats/calc/element/def/flamme
# 炎属性耐性
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s DEF.Flamme.Base
## データをコピー
	data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"DEF.Flamme"}]
	data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"DEF.Flamme"}]
## 追加効果があったら
	execute if data storage lib:temp Stats[] run function lib:stats/calc/_common/
## ステータスを反映
	scoreboard players operation @s DEF.Flamme = #Amount Temp
