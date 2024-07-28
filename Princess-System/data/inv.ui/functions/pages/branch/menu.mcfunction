#> inv.ui:pages/branch/menu
#
# @within function inv.ui:pages/

## menu
    execute if score @s InventoryUI.Page matches 0 run function inv.ui:pages/_/menu
## skill tree
    #execute if score @s InventoryUI.Page matches 10 run function inv.ui:pages/_/skilltree
## crystal
    execute if score @s InventoryUI.Page matches 20 run function inv.ui:pages/_/crystal
## magic
    execute if score @s InventoryUI.Page matches 30 run function inv.ui:pages/_/magic
## status
    #execute if score @s InventoryUI.Page matches 40 run function inv.ui:pages/_/status
## storage
    execute if score @s InventoryUI.Page matches 50 run function inv.ui:pages/_/storage
## quest
    execute if score @s InventoryUI.Page matches 60 run function inv.ui:pages/_/quest
## com
    execute if score @s InventoryUI.Page matches 70 run function inv.ui:pages/_/com
