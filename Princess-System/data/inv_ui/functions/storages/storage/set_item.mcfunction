#> inv_ui:storages/storage/set_item
#   アイテムデータを取得してストレージへ格納
# @within function inv_ui:check/storage/storage

# インベントリのリスト長取得
    execute store result score @s ui_storage_length run data get entity @s Inventory
    
    # ホットバーのアイテム数加算
        function inv_ui:storages/storage/count_hb
        # 初期化
            scoreboard players operation @s ui_storage_value = @s ui_storage_hotbar_count
        # UI分の減算
            scoreboard players remove @s ui_storage_length 6
    # 引数用ストレージ格納
        execute store result storage ui:storage value int 1 run scoreboard players get @s ui_storage_value

# 表示uiの削除
    clear @s #inv_ui:ui

# set
    # value set
        execute store result storage ui:storage page int 1 run scoreboard players get @s ui_storage_page
    # reset storage
        function inv_ui:storages/storage/page_reset with storage ui:storage
    # run
        function inv_ui:storages/storage/pages/set with storage ui:storage

# ui再表示
    function inv_ui:pages/storage/storage
