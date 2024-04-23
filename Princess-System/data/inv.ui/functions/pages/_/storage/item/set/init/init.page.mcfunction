#> inv.ui:pages/_/storage/item/set/init/init.page
# 
# @within function inv.ui:pages/_/storage/item/set/check.init
say インベントリ初期化！
### 操作UI
    #### back
        function inv.ui:asset/any/back 
    #### prev
        function inv.ui:asset/any/prev 
    #### next
        function inv.ui:asset/any/next 

### 枠
    item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    item replace entity @s inventory.9 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    item replace entity @s inventory.17 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}

# データセット
    function inv.ui:pages/_/storage/item/set/set.data with storage inv.ui: Storage.
