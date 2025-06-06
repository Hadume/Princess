#> menu:main
# ページごとの動作
# @within function menu:

##
    execute if entity @s[scores={Menu=0..999}] run return run function menu:home/
    #execute if entity @s[scores={Menu=1000..1999}] run return run function menu:skilltree/root/
    #execute if entity @s[scores={Menu=2000..2999}] run return run function menu:equipment/
    execute if entity @s[scores={Menu=3000..3999}] run return run function menu:magic/
    execute if entity @s[scores={Menu=4000..4999}] run return run function menu:status/
    execute if entity @s[scores={Menu=5000..5999}] run return run function menu:storage/
    #execute if entity @s[scores={Menu=7000..7999}] run return run function menu:communicate/
