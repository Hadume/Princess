#> lib:stats/calc/speed
# スピード
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s Speed.Base
## データをコピー
	data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"Speed"}]
	data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"Speed"}]
##
	execute if data storage lib:temp Stats[] run function lib:stats/calc/common/
## ステータスを反映
	execute if score #Amount Temp matches ..0 run scoreboard players set #Amount Temp 1
	scoreboard players operation @s Speed = #Amount Temp
## 更新
	function lib:status/speed/update
