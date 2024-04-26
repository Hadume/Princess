#> inv.ui:check/storage/item
#   ストレージのアイテム
# @within function inv.ui:check/storage/

# check
    # 戻る
        execute unless predicate inv.ui:check/any/back run scoreboard players set @s InventoryUI.Page 50

# データ読み書き
    ## data get
        ### prev
            execute unless predicate inv.ui:check/any/prev run tag @s add UI.DataGet
        ### next
            execute unless predicate inv.ui:check/any/next run tag @s add UI.DataGet
    ## deta set
        execute if predicate inv.ui:check/storage/anything run tag @s add UI.DataSet

# 遷移
    function inv.ui:pages/
