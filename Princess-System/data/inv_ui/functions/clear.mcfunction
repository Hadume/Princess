#> inv_ui:clear
#   インベントリのUIをすべてクリア
# @within function inv_ui:pages/**

# クリア
    clear @s #inv_ui:ui{UiItem:1b}

# タグ削除
    tag @s remove ui_menu
    tag @s remove ui_skill
    tag @s remove ui_crystal
    tag @s remove ui_magic
    tag @s remove ui_status
    tag @s remove ui_storage
    tag @s remove ui_quest
    tag @s remove ui_com

    tag @s remove ui_storage_storage
