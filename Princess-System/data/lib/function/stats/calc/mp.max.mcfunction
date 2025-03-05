#> lib:stats/calc/mp.max
# 最大魔力の例外処理
# @within function lib:stats/main

## 魔力が0を下回らないように
	execute if score @s MP.Max matches ..0 run scoreboard players set @s MP.Max 1

## 更新
	function #lib:status/mp/update
