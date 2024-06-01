#> inv.ui:pages/_/storage/page.prev
# 
# @within function inv.ui:check/storage/item

# 現在のページチェック
    execute if score @s InventoryUI.ItemStorage.Page matches ..0 run tellraw @s {"text":"これより前のページは存在しません！","color":"gray"}
    execute if score @s InventoryUI.ItemStorage.Page matches ..0 run return -1

# ページのデクリメント
    scoreboard players remove @s InventoryUI.ItemStorage.Page 1
