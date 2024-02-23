#> inv_ui:check/storage/storage
#   storageから選択

# タグ設定
    tag @s add ui_locked

# 選択されたUIから遷移
    # 戻る
        execute unless predicate inv_ui:check/ui/back run function inv_ui:pages/storage
        execute unless entity @s[tag=ui_storage_storage] run return 0
    # 前へ
        execute unless predicate inv_ui:check/ui/prev run scoreboard players remove @s ui_storage_page 1
        execute unless predicate inv_ui:check/ui/prev if score @s ui_storage_page matches ..0 run scoreboard players set @s ui_storage_page 5
        execute unless predicate inv_ui:check/ui/prev run function inv_ui:storages/storage/pages/page_changed
        execute unless predicate inv_ui:check/ui/prev run function inv_ui:pages/storage/storage
        execute unless entity @s[tag=ui_storage_storage] run return 0
    # 次へ
        execute unless predicate inv_ui:check/ui/next run scoreboard players add @s ui_storage_page 1
        execute unless predicate inv_ui:check/ui/next if score @s ui_storage_page matches 6.. run scoreboard players set @s ui_storage_page 1
        execute unless predicate inv_ui:check/ui/next run function inv_ui:storages/storage/pages/page_changed
        execute unless predicate inv_ui:check/ui/next run function inv_ui:pages/storage/storage
        execute unless entity @s[tag=ui_storage_storage] run return 0
    
# アイテムがおかれた場合、ストレージに登録
    execute unless entity @s[tag=ui_storage_locked] run function inv_ui:storages/storage/set_item

# タグ削除
    tag @s remove ui_storage_locked