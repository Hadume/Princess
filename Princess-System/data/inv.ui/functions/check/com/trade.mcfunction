#> inv.ui:check/com/trade
#   ストレージのアイテム
# @within function inv.ui:check/com/

# check
    ## 戻る
        execute unless predicate inv.ui:check/any/back run scoreboard players set @s InventoryUI.Page 70

# プレイヤーセレクトチェック
    execute if predicate inv.ui:check/any/back run function inv.ui:pages/_/com/player.select/select.player

# 個人ストレージ削除
    execute unless predicate inv.ui:check/any/back run data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player

# 遷移
    function inv.ui:pages/
