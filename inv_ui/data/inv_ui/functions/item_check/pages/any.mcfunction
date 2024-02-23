#> inv_ui:item_check/pages/any
#   全てのインベントリにあるアイテムをチェックして番号を返す

# チェック
    execute unless predicate inv_ui:check/item_check/0 run return 0
    execute unless predicate inv_ui:check/item_check/1 run return 1
    execute unless predicate inv_ui:check/item_check/2 run return 2
    execute unless predicate inv_ui:check/item_check/3 run return 3
    execute unless predicate inv_ui:check/item_check/4 run return 4
    execute unless predicate inv_ui:check/item_check/5 run return 5
    execute unless predicate inv_ui:check/item_check/6 run return 6
    execute unless predicate inv_ui:check/item_check/7 run return 7
    execute unless predicate inv_ui:check/item_check/8 run return 8

    execute unless predicate inv_ui:check/item_check/9 run return 9
    execute unless predicate inv_ui:check/item_check/10 run return 10
    execute unless predicate inv_ui:check/item_check/11 run return 11
    execute unless predicate inv_ui:check/item_check/12 run return 12
    execute unless predicate inv_ui:check/item_check/13 run return 13
    execute unless predicate inv_ui:check/item_check/14 run return 14
    execute unless predicate inv_ui:check/item_check/15 run return 15
    execute unless predicate inv_ui:check/item_check/16 run return 16
    execute unless predicate inv_ui:check/item_check/17 run return 17
    
    execute unless predicate inv_ui:check/item_check/18 run return 18
    execute unless predicate inv_ui:check/item_check/19 run return 19
    execute unless predicate inv_ui:check/item_check/20 run return 20
    execute unless predicate inv_ui:check/item_check/21 run return 21
    execute unless predicate inv_ui:check/item_check/22 run return 22
    execute unless predicate inv_ui:check/item_check/23 run return 23
    execute unless predicate inv_ui:check/item_check/24 run return 24
    execute unless predicate inv_ui:check/item_check/25 run return 25
    execute unless predicate inv_ui:check/item_check/26 run return 26

# 条件一致無し
    return -1