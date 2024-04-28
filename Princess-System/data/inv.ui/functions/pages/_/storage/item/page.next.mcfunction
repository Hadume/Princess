#> inv.ui:pages/_/storage/page.next
# 
# @within function inv.ui:check/storage/item

# 現在のページチェック
    execute if score @s InventoryUI.ItemStorage.Page >= @s InventoryUI.ItemStorage.PageLimit run tellraw @s {"text":"これより先のページは存在しません！","color":"gray"}
    execute if score @s InventoryUI.ItemStorage.Page >= @s InventoryUI.ItemStorage.PageLimit run return -1

# ページのデクリメント
    scoreboard players add @s InventoryUI.ItemStorage.Page 1
