#> inv.ui:pages/_/com/player.select/accept.request/trade
# 
# @within function inv.ui:pages/_/com/trade/player/

# ページスコアセット
    scoreboard players set @s InventoryUI.Page 712

# debug
    say 承認！

# トリガースコアリセット
    scoreboard players reset @s InventoryUI.TradeAccept

# ページ遷移
    function inv.ui:pages/
