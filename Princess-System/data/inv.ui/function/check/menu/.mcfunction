#> inv.ui:check/menu/
#   メニューから選択
# @within function inv.ui:

# menu
    execute if score @s InventoryUI.Page matches 0 run function inv.ui:check/menu/menu
# skill tree
    #execute if score @s InventoryUI.Page matches 10 run function inv.ui:check/menu/skilltree
# crystal
    execute if score @s InventoryUI.Page matches 20 run function inv.ui:check/menu/crystal
# magic
    execute if score @s InventoryUI.Page matches 30 run function inv.ui:check/menu/magic
# status
    #execute if score @s InventoryUI.Page matches 40 run function inv.ui:check/menu/status
# storage
    execute if score @s InventoryUI.Page matches 50 run function inv.ui:check/menu/storage
# quest
    execute if score @s InventoryUI.Page matches 60 run function inv.ui:check/menu/quest
# communicate
    execute if score @s InventoryUI.Page matches 70 run function inv.ui:check/menu/com
