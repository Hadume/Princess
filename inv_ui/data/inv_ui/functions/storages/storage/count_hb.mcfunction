#> inv_ui:storages/storage/count_hb
#   ホットバーのアイテム数をカウントして返却

# 初期化
    scoreboard players set @s ui_storage_hotbar_count 0

# カウント
    execute if predicate inv_ui:check/item_check/hb0 run scoreboard players add @s ui_storage_hotbar_count 1
    execute if predicate inv_ui:check/item_check/hb1 run scoreboard players add @s ui_storage_hotbar_count 1
    execute if predicate inv_ui:check/item_check/hb2 run scoreboard players add @s ui_storage_hotbar_count 1
    execute if predicate inv_ui:check/item_check/hb3 run scoreboard players add @s ui_storage_hotbar_count 1
    execute if predicate inv_ui:check/item_check/hb4 run scoreboard players add @s ui_storage_hotbar_count 1
    execute if predicate inv_ui:check/item_check/hb5 run scoreboard players add @s ui_storage_hotbar_count 1
    execute if predicate inv_ui:check/item_check/hb6 run scoreboard players add @s ui_storage_hotbar_count 1
    execute if predicate inv_ui:check/item_check/hb7 run scoreboard players add @s ui_storage_hotbar_count 1
    execute if predicate inv_ui:check/item_check/hb8 run scoreboard players add @s ui_storage_hotbar_count 1
