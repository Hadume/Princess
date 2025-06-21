#> player:reduce.cooltime
# クールタイム進行
# @within function main:tick/player

##
    execute if entity @s[scores={ctClick=1..}] run scoreboard players remove @s ctClick 1
    execute if entity @s[scores={ctClickS=1..}] run scoreboard players remove @s ctClickS 1
    execute if entity @s[scores={ctOffhand=1..}] run scoreboard players remove @s ctOffhand 1
    execute if entity @s[scores={ctOffhandS=1..}] run scoreboard players remove @s ctOffhandS 1
