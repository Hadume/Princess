#> lib:exp/
# 経験値の計算とか
# @input as entity
# @within tag/function lib:exp

## expが0以下だったら
	execute if entity @s[scores={Exp=..0}] run function lib:exp/levelup/

## 表示
	function #api:display/exp
