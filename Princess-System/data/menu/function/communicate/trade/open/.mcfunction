#> menu:communicate/trade/open/
# トレード画面を開く
# @within function main:tick/player

say communicate:trade

## 相手のIDをコピー
    scoreboard players operation #traderID temp = @s rradeAction

## 同期している２人を変更
    tag @s add this
    execute as @a if score @s ID = #traderID temp run function menu:communicate/trade/open/trade.with
    tag @s remove this

## UI
    function menu:communicate/trade/open/ui

## 空白slotを作る
    data modify storage dat: _.menu.Communicate.TradeItems set value [{slot:10b},{slot:11b},{slot:12b},{slot:19b},{slot:20b},{slot:21b},{slot:28b},{slot:29b},{slot:30b}]

## スコアをリセット
    scoreboard players reset @s rradeAction

## 一時使用scoreHolderをリセット
    scoreboard players reset #traderID temp
