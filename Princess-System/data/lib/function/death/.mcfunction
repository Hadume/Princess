#> lib:death/
# 死
# @within tag/function lib:die

##
    execute if entity @s[type=player] run function lib:death/player/
    execute if entity @s[type=!player] run function lib:death/entity/
