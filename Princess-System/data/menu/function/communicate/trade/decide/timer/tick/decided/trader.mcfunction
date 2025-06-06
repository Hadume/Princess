#> menu:communicate/trade/decide/timer/tick/decided/trader
# 取引決定のインベントリー更新
# @within function menu:communicate/trade/decide/timer/tick/decided/

## 取引する！
    execute if entity @s[scores={Trade.DecideTimer=0}] run return run function menu:communicate/trade/decide/trade/

##
    tag @s add LockedInventory
    function menu:communicate/trade/ui/
    tag @s remove LockedInventory
