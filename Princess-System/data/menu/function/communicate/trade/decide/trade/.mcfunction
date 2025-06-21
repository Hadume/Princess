#> menu:communicate/trade/decide/trade/
# 取引
# @within function menu:communicate/trade/decide/timer/tick/decided/trader

## インベントリーをコピー
    function #api:get.nbt/inventory

## アイテムを
    function menu:communicate/trade/decide/trade/common

## 相手でも
    scoreboard players operation #tradeWith temp = @s tradeWith
    execute as @a if score @s ID = #tradeWith temp run function #api:get.nbt/inventory
    execute as @a if score @s ID = #tradeWith temp run function menu:communicate/trade/decide/trade/common

## ホームに戻る
    function #api:get.nbt/inventory
    function menu:communicate/trade/back/

## 一時使用scoreHolderをリセット
    scoreboard players reset #tradeWith temp
