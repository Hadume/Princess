#> inv_ui:item_check/return
# ホットバーにアイテムを戻す
# @within function inv_ui:item_check/check

# 検知して戻す
    # slot0
        execute unless predicate inv_ui:check/item_check/hb0 if data storage ui:player {ItemReturned:0b} run function inv_ui:item_check/return/0 with storage ui:player
    # slot1
        execute unless predicate inv_ui:check/item_check/hb1 if data storage ui:player {ItemReturned:0b} run function inv_ui:item_check/return/1 with storage ui:player
    # slot2
        execute unless predicate inv_ui:check/item_check/hb2 if data storage ui:player {ItemReturned:0b} run function inv_ui:item_check/return/2 with storage ui:player
    # slot3
        execute unless predicate inv_ui:check/item_check/hb3 if data storage ui:player {ItemReturned:0b} run function inv_ui:item_check/return/3 with storage ui:player
    # slot4
        execute unless predicate inv_ui:check/item_check/hb4 if data storage ui:player {ItemReturned:0b} run function inv_ui:item_check/return/4 with storage ui:player
    # slot5
        execute unless predicate inv_ui:check/item_check/hb5 if data storage ui:player {ItemReturned:0b} run function inv_ui:item_check/return/5 with storage ui:player
    # slot6
        execute unless predicate inv_ui:check/item_check/hb6 if data storage ui:player {ItemReturned:0b} run function inv_ui:item_check/return/6 with storage ui:player
    # slot7
        execute unless predicate inv_ui:check/item_check/hb7 if data storage ui:player {ItemReturned:0b} run function inv_ui:item_check/return/7 with storage ui:player
    # slot8
        execute unless predicate inv_ui:check/item_check/hb8 if data storage ui:player {ItemReturned:0b} run function inv_ui:item_check/return/8 with storage ui:player
