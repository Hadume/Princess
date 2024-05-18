#> inv.ui:pages/_/com/trade/_/sync
#   トレードアイテムの同期
# @within function inv.ui:check/com/trade

# タグ付け
    scoreboard players operation #InventoryUI.Com InventoryUI.TradeID = @s InventoryUI.TradeID
    execute as @a if score @s InventoryUI.TradeID = #InventoryUI.Com InventoryUI.TradeID run tag @s add UI.TradeSync
    tag @s remove UI.TradeSync

# アイテムをコピー
    ## 自分 -> 相手
        ### items
            item replace entity @a[tag=UI.TradeSync,limit=1] inventory.5 from entity @s inventory.1
            item replace entity @a[tag=UI.TradeSync,limit=1] inventory.6 from entity @s inventory.2
            item replace entity @a[tag=UI.TradeSync,limit=1] inventory.7 from entity @s inventory.3
            item replace entity @a[tag=UI.TradeSync,limit=1] inventory.14 from entity @s inventory.10
            item replace entity @a[tag=UI.TradeSync,limit=1] inventory.15 from entity @s inventory.11
            item replace entity @a[tag=UI.TradeSync,limit=1] inventory.16 from entity @s inventory.12
            item replace entity @a[tag=UI.TradeSync,limit=1] inventory.23 from entity @s inventory.19
            item replace entity @a[tag=UI.TradeSync,limit=1] inventory.24 from entity @s inventory.20
            item replace entity @a[tag=UI.TradeSync,limit=1] inventory.25 from entity @s inventory.21
    ## 相手 -> 自分
        ### items
            item replace entity @s inventory.5 from entity @a[tag=UI.TradeSync,limit=1] inventory.1
            item replace entity @s inventory.6 from entity @a[tag=UI.TradeSync,limit=1] inventory.2
            item replace entity @s inventory.7 from entity @a[tag=UI.TradeSync,limit=1] inventory.3
            item replace entity @s inventory.14 from entity @a[tag=UI.TradeSync,limit=1] inventory.10
            item replace entity @s inventory.15 from entity @a[tag=UI.TradeSync,limit=1] inventory.11
            item replace entity @s inventory.16 from entity @a[tag=UI.TradeSync,limit=1] inventory.12
            item replace entity @s inventory.23 from entity @a[tag=UI.TradeSync,limit=1] inventory.19
            item replace entity @s inventory.24 from entity @a[tag=UI.TradeSync,limit=1] inventory.20
            item replace entity @s inventory.25 from entity @a[tag=UI.TradeSync,limit=1] inventory.21
    ## ready表示
        ### 相手
            execute if entity @s[tag=UI.TradeReady] run item replace entity @a[tag=UI.TradeSync,limit=1] inventory.26 with lime_stained_glass_pane{display:{Name:'[{"text":"Ready!"}]'},UiItem:1b}
        ### 自分
            execute if entity @a[tag=UI.TradeSync,tag=UI.TradeReady,limit=1] run item replace entity @s inventory.26 with lime_stained_glass_pane{display:{Name:'[{"text":"Ready!"}]'},UiItem:1b}

# トレードプレビューアイテムにタグを付与
    #item modify entity @s inventory.5 inv.ui:any/set.uiitem
    #item modify entity @s inventory.6 inv.ui:any/set.uiitem
    #item modify entity @s inventory.7 inv.ui:any/set.uiitem
    #item modify entity @s inventory.14 inv.ui:any/set.uiitem
    #item modify entity @s inventory.15 inv.ui:any/set.uiitem
    #item modify entity @s inventory.16 inv.ui:any/set.uiitem
    #item modify entity @s inventory.23 inv.ui:any/set.uiitem
    #item modify entity @s inventory.24 inv.ui:any/set.uiitem
    #item modify entity @s inventory.25 inv.ui:any/set.uiitem

tag @a remove UI.TradeSync
