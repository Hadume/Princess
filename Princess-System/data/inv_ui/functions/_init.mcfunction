#> inv_ui:_init
#   インベントリUIの初期化
#   他ファイルから適当に参照するとぶっ壊れるかも
# @within 

#UIロック
    tag @s add ui_locked

# タグ削除
    tag @s remove ui_locked

    tag @s remove ui_menu
    tag @s remove ui_skill
    tag @s remove ui_crystal
    tag @s remove ui_status
    tag @s remove ui_storage
    tag @s remove ui_quest
    tag @s remove ui_com

    tag @s remove ui_storage_storage
    tag @s remove ui_storage_locked

# UI系アイテムクリア
    clear @s #inv_ui:ui{UiItem:1b}

# メインメニューにセット
    function inv_ui:pages/menu

# 進捗削除
    advancement revoke @s only inv_ui:clicked

# ロック解除
    tag @s remove ui_locked
