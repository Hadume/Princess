#> menu:communicate/
# コミュニケート
# @within function menu:

##
    execute if entity @s[scores={menu=7000..7099}] run return run function menu:communicate/root/
    execute if entity @s[scores={menu=7100}] run return run function menu:communicate/select_action/
    execute if entity @s[scores={menu=7200}] run return run function menu:communicate/trade/
