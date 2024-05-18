#> inv.ui:pages/_/com/trade/_/destruct
# トレードの途中終了
# @within function inv.ui:check/com/trade

# アイテム返品
    #

# 画面遷移
    scoreboard players operation #InventoryUI.Com Temp = @s InventoryUI.TradeID
    execute as @a if score @s InventoryUI.TradeID = #InventoryUI.Com Temp run scoreboard players set @s InventoryUI.Page 70

# ページ遷移
    function inv.ui:pages/