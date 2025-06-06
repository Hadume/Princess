#> lib:die/
# 死
# @input as entity
# @within tag/function lib:die

##
    execute if entity @s[type=player] run function lib:die/player/
    execute if entity @s[type=!player] run function lib:die/entity/
