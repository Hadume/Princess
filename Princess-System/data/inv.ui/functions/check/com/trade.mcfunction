#> inv.ui:check/com/trade
#   ストレージのアイテム
# @within function inv.ui:check/com/

# check
    ## 戻る
        execute unless predicate inv.ui:check/any/back run scoreboard players set @s InventoryUI.Page 70

# プレイヤーセレクトチェック
    execute if predicate inv.ui:check/any/back run function inv.ui:pages/_/com/trade/select/select.player

# 遷移
    function inv.ui:pages/
