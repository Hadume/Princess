#> inv.ui:check/com/trade
#   アイテムトレード画面
# @within function inv.ui:check/com/

# check
    ## 戻る
        execute unless predicate inv.ui:check/any/back run scoreboard players set @s InventoryUI.Page 70

# アイテム更新
    execute if predicate inv.ui:check/any/back run function inv.ui:pages/_/com/trade/_/sync

# 遷移
    function inv.ui:pages/
