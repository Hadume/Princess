#> inv_ui:item_check/pages/storage/storage
#   storageのアイテムをチェックして番号を返す
# @within function inv_ui:item_check/check

# チェック
    execute unless predicate inv_ui:check/item_check/0 run return 0
    execute unless predicate inv_ui:check/item_check/8 run return 8

    execute unless predicate inv_ui:check/item_check/9 run return 9
    execute unless predicate inv_ui:check/item_check/17 run return 17
    
    execute unless predicate inv_ui:check/item_check/18 run return 18
    execute unless predicate inv_ui:check/item_check/26 run return 26

# 条件一致無し
    return -1
