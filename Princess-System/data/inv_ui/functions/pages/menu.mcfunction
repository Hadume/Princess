#> inv_ui:pages/menu
#   main memu page
# @within function
#   inv_ui:check/*
#   inv_ui:_init

# インベントリリセット
    function inv_ui:clear

# UI設置
    # 枠
        item replace entity @s inventory.0 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
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
        item replace entity @s inventory.19 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.20 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.21 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.22 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.23 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.24 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.25 with gray_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    
    # スキルツリー
        item replace entity @s inventory.10 with oak_sapling{Ui:11,UiItem:1b}
        item modify entity @s inventory.10 inv_ui:menu/skill
    
    # クリスタル
        item replace entity @s inventory.11 with iron_chestplate{Ui:12,UiItem:1b}
        item modify entity @s inventory.11 inv_ui:menu/crystal

    # 魔法設定
        item replace entity @s inventory.12 with red_dye{Ui:13,UiItem:1b}
        item modify entity @s inventory.12 inv_ui:menu/magic

    # ステータス
        loot replace entity @s inventory.13 loot inv_ui:player_head
        item modify entity @s inventory.13 inv_ui:menu/status
    
    # ストレージ
        item replace entity @s inventory.14 with chest{Ui:15,UiItem:1b}
        item modify entity @s inventory.14 inv_ui:menu/storage

    # クエスト
        item replace entity @s inventory.15 with paper{Ui:16,UiItem:1b}
        item modify entity @s inventory.15 inv_ui:menu/quest

    # コミュニケート
        item replace entity @s inventory.16 with emerald{Ui:17,UiItem:1b}
        item modify entity @s inventory.16 inv_ui:menu/com

# タグセット
    tag @s add ui_menu
