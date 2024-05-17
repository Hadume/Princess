#> inv.ui:check/com/
#   コミュニケートから選択
# @within function inv.ui:

# プレイヤー選択
    #execute if score @s InventoryUI.Page matches 701 run function inv.ui:check/com/player.select
    execute if score @s InventoryUI.Page matches 711 run function inv.ui:check/com/player.select

# トレード
    execute if score @s InventoryUI.Page matches 712 run function inv.ui:check/com/trade
