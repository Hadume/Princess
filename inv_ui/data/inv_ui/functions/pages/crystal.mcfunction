#> inv_ui:pages/crystal
#   crystal page
#

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
        item replace entity @s inventory.5 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.6 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.7 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.10 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.16 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.19 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.20 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.21 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.22 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.23 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.24 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.25 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    
    # クリスタルスロットロック
        item replace entity @s inventory.11 with red_stained_glass_pane{Ui:null,UiItem:1b}
        item replace entity @s inventory.12 with red_stained_glass_pane{Ui:null,UiItem:1b}
        item replace entity @s inventory.13 with red_stained_glass_pane{Ui:null,UiItem:1b}
        item replace entity @s inventory.14 with red_stained_glass_pane{Ui:null,UiItem:1b}
        item replace entity @s inventory.15 with red_stained_glass_pane{Ui:null,UiItem:1b}
        item replace entity @s inventory.20 with red_stained_glass_pane{Ui:null,UiItem:1b}
        item replace entity @s inventory.21 with red_stained_glass_pane{Ui:null,UiItem:1b}
        item replace entity @s inventory.22 with red_stained_glass_pane{Ui:null,UiItem:1b}
        item replace entity @s inventory.23 with red_stained_glass_pane{Ui:null,UiItem:1b}
        item replace entity @s inventory.24 with red_stained_glass_pane{Ui:null,UiItem:1b}

# タグセット
    tag @s add ui_crystal