#> lib:stats/calc/main
# ステータスを計算
# @within function lib:stats/calc/loop

## ステータスをコピー
	$scoreboard players operation #Amount Temp = @s $(Stat).Base

## データをコピー
	$data modify storage temp: Stats append from storage temp: Armor[{components:{"minecraft:custom_data":{Category:"Armor"}}}].components."minecraft:custom_data".Stats[{Name:"$(Stat)"}]
	$data modify storage temp: Stats append from storage temp: Weapon[{components:{"minecraft:custom_data":{Category:"Wand"}}}].components."minecraft:custom_data".Stats[{Name:"$(Stat)"}]

##
	execute if data storage temp: Stats[] run function lib:stats/calc/-common/

## ステータスを反映
	$scoreboard players operation @s $(Stat) = #Amount Temp
