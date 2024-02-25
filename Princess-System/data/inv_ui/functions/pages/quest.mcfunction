#> inv_ui:pages/quest
#   quest page
# @within function
#   inv_ui:check/main
#   inv_ui:check/quest

# インベントリリセット
    function inv_ui:clear

# UI設置
    # 操作UI
        item replace entity @s inventory.0 with arrow{Ui:0,UiItem:1b}
        item modify entity @s inventory.0 inv_ui:ui/back
    # クエストUI
        # 過去に受けたクエスト
            item replace entity @s inventory.9 with book{Ui:null,UiItem:1b}
    # 枠
        item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.17 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.18 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.26 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}

# タグセット
    tag @s add ui_quest
