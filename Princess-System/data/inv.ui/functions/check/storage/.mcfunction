#> inv.ui:check/storage/
#   ストレージから選択
# @within function inv.ui:

# アイテムストレージ
    execute if score @s InventoryUI.Page matches 501 run function inv.ui:check/storage/item
