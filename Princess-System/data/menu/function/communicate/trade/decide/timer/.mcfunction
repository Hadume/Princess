#> menu:communicate/trade/decide/timer/
#
# @within function menu:communicate/trade/

## UIを更新
    scoreboard players set #InvCount Temp 0

## 決定開始
    execute if entity @s[scores={Trade.DecideTimer=-1}] run return run scoreboard players set @s Trade.DecideTimer 60

## 決定取りやめ
    execute if entity @s[scores={Trade.DecideTimer=0..}] run return run scoreboard players set @s Trade.DecideTimer -1
