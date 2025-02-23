#> lib:stats/calc/hp.max
# 最大体力
# @within function lib:stats/main

## ステータスをコピー
	scoreboard players operation #Amount Temp = @s HP.Max.Base

## データをコピー
	data modify storage temp: Stats append from storage temp: Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"HPMax"}]
	data modify storage temp: Stats append from storage temp: Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"HPMax"}]

## 追加効果があったら
	execute if data storage temp: Stats[] run function lib:stats/calc/-common/

## ステータスを反映
	execute if score #Amount Temp matches ..0 run scoreboard players set #Amount Temp 1
	scoreboard players operation @s HP.Max = #Amount Temp

## 更新
	function #lib:status/hp/update
