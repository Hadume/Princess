#> inv.ui:check/com
#   コミュニケートから選択チェック
# @within function inv.ui:

# check
    ## 戻る
        execute unless predicate inv.ui:check/any/back run scoreboard players set @s InventoryUI.Page 0
    ## パーティ作成
        execute unless predicate inv.ui:check/com/party run scoreboard players set @s InventoryUI.Page -1
    ## トレード
        execute unless predicate inv.ui:check/com/trade run scoreboard players set @s InventoryUI.Page 711

# 遷移
    function inv.ui:pages/
