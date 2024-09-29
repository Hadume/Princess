#> lib:stats/calc/mgc.speed
# 魔法、速度
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s Mgc.Speed.Base
## データをコピー
	data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"Mgc.Speed"}]
	data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"Mgc.Speed"}]
## 追加効果があったら
	execute if data storage lib:temp Stats[] run function lib:stats/calc/common/
## ステータスを反映
	scoreboard players operation @s Mgc.Speed = #Amount Temp
