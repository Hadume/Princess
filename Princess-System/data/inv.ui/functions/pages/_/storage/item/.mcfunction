#> inv.ui:pages/_/storage/item/
# 
# @within function inv.ui:pages/branch/*

# ページ番号取得
    execute store result storage inv.ui: Storage.PageNumber int 1 run scoreboard players get @s InventoryUI.ItemStorage.Page

# ページ取得
    execute if entity @s[tag=UI.DataGet] run function inv.ui:pages/_/storage/item/get/ with storage inv.ui: Storage.

# 操作UI
    ## back
        function inv.ui:asset/any/back 
    ## prev
        function inv.ui:asset/any/prev 
    ## next
        function inv.ui:asset/any/next 

# 枠
    item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    item replace entity @s inventory.9 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    item replace entity @s inventory.17 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}

# ページデータセット
    execute if entity @s[tag=UI.DataSet] run function inv.ui:pages/_/storage/item/set/

# タグ削除
    tag @s remove UI.DataGet
    tag @s remove UI.DataSet