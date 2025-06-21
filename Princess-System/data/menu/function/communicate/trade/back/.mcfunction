#> menu:communicate/trade/back/
# トレード決裂
# @within function
#   menu:communicate/trade/decide/trade/
#   menu:communicate/trade/
#   menu:home

## 相手の状態も戻してあげる
    scoreboard players operation #tradeWith temp = @s tradeWith
    execute as @a if score @s ID = #tradeWith temp run function menu:communicate/trade/back/trader

## 自身のスコアをリセット
    scoreboard players reset @s tradeWith

## 一時使用scoreHolderをリセット
    scoreboard players reset #tradeWith temp

## ホームに戻る
    return run function menu:communicate/back
