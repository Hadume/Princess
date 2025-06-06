#> menu:communicate/trade/open/
# トレード画面を開く
# @within function main:tick/player

say communicate:trade

## 相手のIDをコピー
    scoreboard players operation #Trader.ID Temp = @s Trade.Action

## 同期している２人を変更
    tag @s add This
    execute as @a if score @s ID = #Trader.ID Temp run function menu:communicate/trade/open/trade.with
    tag @s remove This

## UI
    function menu:communicate/trade/open/ui

## 空白Slotを作る
    data modify storage dat: _.Menu.Communicate.TradeItems set value [{Slot:10b},{Slot:11b},{Slot:12b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:28b},{Slot:29b},{Slot:30b}]

## スコアをリセット
    scoreboard players reset @s Trade.Action

## 一時使用ScoreHolderをリセット
    scoreboard players reset #Trader.ID Temp
