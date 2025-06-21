#> menu:magic/
# 魔法
# @within function menu:

##
    execute if entity @s[scores={menu=3000}] run return run function menu:magic/root/
    execute if entity @s[scores={menu=3100..3499}] run return run function menu:magic/select/
