#> lib:stats/calc/cooltime
# 魔法、クールタイム
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s Mgc.Cooltime.Base
## データをコピー
	data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"Mgc.Cooltime"}]
	data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"Mgc.Cooltime"}]
## 追加効果があったら
	execute if data storage lib:temp Stats[] run function lib:stats/calc/_common/
## ステータスを反映
	scoreboard players operation @s Mgc.Cooltime = #Amount Temp
