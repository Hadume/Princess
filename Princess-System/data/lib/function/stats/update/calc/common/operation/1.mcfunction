#> lib:stats/update/calc/common/operation/1
#
# @within function lib:stats/update/calc/common/

##
	scoreboard players operation #Amount.Stored.1 Temp *= #Amount Temp
	scoreboard players operation #Amount.Stored.1 Temp /= #100 Const
	scoreboard players operation #Amount Temp += #Amount.Stored.1 Temp
