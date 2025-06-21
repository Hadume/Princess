#> lib:stats/update/calc/common/operation/1
#
# @within function lib:stats/update/calc/common/

##
    scoreboard players operation #amountStored1 temp *= #amount temp
    scoreboard players operation #amountStored1 temp /= #100 const
    scoreboard players operation #amount temp += #amountStored1 temp
