#> lib:stats/calc/element/atk/wind
# 風属性攻撃力
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s ATK.Wind.Base
## データをコピー
	data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"ATK.Wind"}]
	data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"ATK.Wind"}]
## 追加効果があったら
	execute if data storage lib:temp Stats[] run function lib:stats/calc/_common/
## ステータスを反映
	scoreboard players operation @s ATK.Wind = #Amount Temp
