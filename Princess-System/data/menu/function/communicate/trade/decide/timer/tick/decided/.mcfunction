#> menu:communicate/trade/decide/timer/tick/decided/
# 取引決定したことを相手に知らせる
# @within function menu:communicate/trade/decide/timer/tick/

## 取引相手
    scoreboard players operation #Trade.With Temp = @s Trade.With
    ### インベントリー更新
        execute as @a if score @s ID = #Trade.With Temp run function menu:communicate/trade/decide/timer/tick/decided/trader


## 一時使用ScoreHolderをリセット
    scoreboard players reset #Trade.With Temp
