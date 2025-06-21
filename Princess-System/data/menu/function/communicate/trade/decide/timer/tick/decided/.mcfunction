#> menu:communicate/trade/decide/timer/tick/decided/
# 取引決定したことを相手に知らせる
# @within function menu:communicate/trade/decide/timer/tick/

## 取引相手
    scoreboard players operation #tradeWith temp = @s tradeWith
    ### インベントリー更新
        execute as @a if score @s ID = #tradeWith temp run function menu:communicate/trade/decide/timer/tick/decided/trader


## 一時使用scoreHolderをリセット
    scoreboard players reset #tradeWith temp
