#> inv.ui:pages/_/storage/item/
# 
# @within function inv.ui:pages/branch/*

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

# ページ番号取得
    execute store result storage inv.ui: Storage.PageNumber int 1 run scoreboard players get @s InventoryUI.ItemStorage.Page
# アイテムゲット
    #function inv.ui:pages/_/storage/item/get with storage inv.ui: Storage.
# アイテムセット
    function inv.ui:pages/_/storage/item/set
