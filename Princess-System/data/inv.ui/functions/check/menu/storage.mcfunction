#> inv.ui:check/storage
#   ストレージメニューから選択チェック
# @within function inv.ui:

# check
    # 戻る
        execute unless predicate inv.ui:check/any/back run scoreboard players set @s InventoryUI.Page 0
    # アイテムストレージ
        execute unless predicate inv.ui:check/storage/item run scoreboard players set @s InventoryUI.Page 501
    # 素材ストレージ
        execute unless predicate inv.ui:check/storage/material run scoreboard players set @s InventoryUI.Page -1

# 遷移
    function inv.ui:pages/
