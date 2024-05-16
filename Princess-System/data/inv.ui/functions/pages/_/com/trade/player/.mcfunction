#> inv.ui:pages/_/com/trade/player/
# Tick File
# @within function inv.ui:player/

# tradeリクエストを承認
    execute if score @s InventoryUI.TradeAccept matches 1.. run function inv.ui:pages/_/com/player.select/accept.request/trade

# クールダウンのデクリメント
    scoreboard players remove @s[scores={InventoryUI.TradeCooldown=1..}] InventoryUI.TradeCooldown 1