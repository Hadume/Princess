#> lib:stats/calc/pierce
# 魔法、貫通数
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s Mgc.Pierce.Base
## データをコピー
	data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"Mgc.Pierce"}]
	data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"Mgc.Pierce"}]
## 追加効果があったら
	execute if data storage lib:temp Stats[] run function lib:stats/calc/_common/
## ステータスを反映
	scoreboard players operation @s Mgc.Pierce = #Amount Temp
