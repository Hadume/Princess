#> inv.ui:check/magic
#   魔法選択から選択チェック
# @within function inv.ui:

# check
    # 戻る
        execute unless predicate inv.ui:check/any/back run scoreboard players set @s InventoryUI.Page 0

# 遷移
    function inv.ui:pages/
