#> menu:communicate/trade/decide/timer/
#
# @within function menu:communicate/trade/

## UIを更新
    scoreboard players set #invCount temp 0

## 決定開始
    execute if entity @s[scores={tradeDecideTimer=-1}] run return run scoreboard players set @s tradeDecideTimer 60

## 決定取りやめ
    execute if entity @s[scores={tradeDecideTimer=0..}] run return run scoreboard players set @s tradeDecideTimer -1
