#> inv.ui:check/storage/item
#   ストレージのアイテム
# @within function inv.ui:check/com/

# check
    # 戻る
        execute unless predicate inv.ui:check/any/back run scoreboard players set @s InventoryUI.Page 70

# 遷移
    function inv.ui:pages/
