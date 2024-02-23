#> inv_ui:clicked
#   clicked Inventory UI
#

# 音を出す
    playsound ui.button.click master @s ~ ~ ~ 0.3 1.2

# 誤ったアイテムがUIに混入した場合返品
    function inv_ui:item_check/check

# 選択されたページごとにアイテム取得を確認
    execute if entity @s[tag=ui_menu,tag=!ui_locked] run function inv_ui:check/main
    #execute if entity @s[tag=ui_skill,tag=!ui_locked] run function inv_ui:check/skill
    execute if entity @s[tag=ui_crystal,tag=!ui_locked] run function inv_ui:check/crystal
    execute if entity @s[tag=ui_magic,tag=!ui_locked] run function inv_ui:check/magic
    #execute if entity @s[tag=ui_status,tag=!ui_locked] run function inv_ui:check/status
    execute if entity @s[tag=ui_storage,tag=!ui_locked] run function inv_ui:check/storage
    execute if entity @s[tag=ui_quest,tag=!ui_locked] run function inv_ui:check/quest
    execute if entity @s[tag=ui_com,tag=!ui_locked] run function inv_ui:check/com

    execute if entity @s[tag=ui_storage_storage,tag=!ui_locked] run function inv_ui:check/storage/storage
    
# 終了処理
    # タグ削除
        tag @s remove ui_locked
    # 進捗削除
        advancement revoke @s only inv_ui:clicked
