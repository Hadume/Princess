#> inv_ui:item_check/check
#   UIエリアをチェックして、アイテムが混入していた場合に返品
# @within function inv_ui:clicked

# ページからチェック
    # スコア初期化
        data modify storage ui:player ItemCheckValue set value -1
        data modify storage ui:player ItemReturned set value 0b
    # ページ毎にチェック
        # menu
            execute if entity @s[tag=ui_menu] store result storage ui:player ItemCheckValue int 1 run function inv_ui:item_check/pages/any
        # crystal
            execute if entity @s[tag=ui_crystal] store result storage ui:player ItemCheckValue int 1 run function inv_ui:item_check/pages/any
        # magic
            execute if entity @s[tag=ui_magic] store result storage ui:player ItemCheckValue int 1 run function inv_ui:item_check/pages/any
        # storage
            execute if entity @s[tag=ui_storage] store result storage ui:player ItemCheckValue int 1 run function inv_ui:item_check/pages/any
            # storage
                execute if entity @s[tag=ui_storage_storage] store result storage ui:player ItemCheckValue int 1 run function inv_ui:item_check/pages/storage/storage
        # quest
            execute if entity @s[tag=ui_quest] store result storage ui:player ItemCheckValue int 1 run function inv_ui:item_check/pages/any
        # communicate
            execute if entity @s[tag=ui_com] store result storage ui:player ItemCheckValue int 1 run function inv_ui:item_check/pages/any

# 番号スロットのアイテムをホットバーに返却
    execute unless data storage ui:player {ItemCheckValue:-1} run function inv_ui:item_check/return
