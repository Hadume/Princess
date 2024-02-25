#> inv_ui:pages/storage/storage
#   storage page
# @within function
#   inv_ui:check/storage
#   inv_ui:check/storage/storage
#   inv_ui:storages/storage/set_item

# インベントリリセット
    function inv_ui:clear

# UI設置
    # 操作UI
        # 戻る
            item replace entity @s inventory.0 with arrow{Ui:0,UiItem:1b}
            item modify entity @s inventory.0 inv_ui:ui/back
        # 前のページ
            item replace entity @s inventory.18 with arrow{Ui:1,UiItem:1b}
            item modify entity @s inventory.18 inv_ui:ui/prev
            scoreboard players remove @s ui_storage_page 1
            execute if score @s ui_storage_page matches ..0 run scoreboard players set @s ui_storage_page 5
            item modify entity @s inventory.18 inv_ui:storage/storage/prev
        # 次のページ
            item replace entity @s inventory.26 with arrow{Ui:2,UiItem:1b}
            item modify entity @s inventory.26 inv_ui:ui/next
            scoreboard players add @s ui_storage_page 2
            execute if score @s ui_storage_page matches 6 run scoreboard players set @s ui_storage_page 1
            execute if score @s ui_storage_page matches 7.. run scoreboard players set @s ui_storage_page 2
            item modify entity @s inventory.26 inv_ui:storage/storage/next
        # ページスコアを戻す
            scoreboard players remove @s ui_storage_page 1
            execute if score @s ui_storage_page matches ..0 run scoreboard players set @s ui_storage_page 5

    # 枠
        item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.9 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.17 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}

# タグロック
    tag @s add ui_locked

# ストレージの中身取得
    # value set
        execute store result storage ui:storage page int 1 run scoreboard players get @s ui_storage_page
    # run
        function inv_ui:storages/storage/get_item with storage ui:storage

# タグセット
    tag @s add ui_storage_storage
