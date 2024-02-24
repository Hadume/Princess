#> inv_ui:pages/com
#   communicate page
# @within function
#   inv_ui:check/main
#   inv_ui:check/com

# インベントリリセット
    function inv_ui:clear

# UI設置
    # 操作UI
        item replace entity @s inventory.0 with arrow{Ui:0,UiItem:1b}
        item modify entity @s inventory.0 inv_ui:ui/back
    # 枠
        item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.9 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.17 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.18 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.26 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}

        item replace entity @s inventory.1 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.2 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.3 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.4 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.5 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.6 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.7 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.10 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.12 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.13 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.14 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.16 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.19 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.20 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.21 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.22 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.23 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.24 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.25 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    
    # パーティ
        item replace entity @s inventory.11 with compass{Ui:null,UiItem:1b}
        item modify entity @s inventory.11 inv_ui:com/party

    # トレード
        item replace entity @s inventory.15 with emerald{Ui:null,UiItem:1b}
        item modify entity @s inventory.15 inv_ui:com/trade

# タグセット
    tag @s add ui_com
