#> inv.ui:pages/_/com/trade/player/get.trade.id
# プレイヤーにTradeIDを付与する
# @within function inv.ui:check/menu/com

# TradeIDのインクリメント
    scoreboard players add #InventoryUI.Com InventoryUI.TradeID 1

# TradeIDの計算
    scoreboard players operation #InventoryUI.Com Temp = #InventoryUI.Com InventoryUI.TradeID
    scoreboard players operation #InventoryUI.Com Temp %= #2^15 Const

# プレイヤーに渡す
    scoreboard players operation @s InventoryUI.TradeID = #InventoryUI.Com Temp

# Temp削除
    scoreboard players reset #InventoryUI.Com Temp
