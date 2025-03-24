#> lib:stats/update/calc/main
# ステータスを計算
# @within function lib:stats/update/calc/loop

## ステータスをコピー
	$scoreboard players operation #Amount Temp = @s $(Stat).Base

## データをコピー
	$data modify storage temp: CalcStats append from storage temp: Armor[{components:{"minecraft:custom_data":{Category:"Armor"}}}].components."minecraft:custom_data".Stats[{Name:"$(Stat)"}]
	$data modify storage temp: CalcStats append from storage temp: Weapon[{components:{"minecraft:custom_data":{Category:"Wand"}}}].components."minecraft:custom_data".Stats[{Name:"$(Stat)"}]
	$data modify storage temp: CalcStats append from storage temp: Stats[{Name:"$(Stat)"}]

##
	execute if data storage temp: CalcStats[] run function lib:stats/update/calc/common/

## ステータスを反映
	$scoreboard players operation @s $(Stat) = #Amount Temp
