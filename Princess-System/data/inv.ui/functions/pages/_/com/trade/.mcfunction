#> inv.ui:pages/_/com/trade/
#   トレード画面表示
# @within function inv.ui:pages/branch/com

# プレイヤーヘッドの挿入
    ## 自分のヘッド
        loot replace entity @s inventory.9 loot inv.ui:communicate/get.player_head
    ## 相手のヘッド
        tag @s add UI.TradeMaster
        scoreboard players operation #InventoryUI.Com InventoryUI.TradeID = @s InventoryUI.TradeID
        execute as @a[tag=!UI.TradeMaster] if score @s InventoryUI.TradeID = #InventoryUI.Com InventoryUI.TradeID run loot replace block 0 -64 0 inventory.0 loot inv.ui:communicate/get.player_head
        item replace entity @s inventory.17 from block 0 -64 0 inventory.0
        tag @s remove UI.TradeMaster
# UI
    ## 操作UI
        ### back
            function inv.ui:asset/any/back 
    ## 枠
        item replace entity @s inventory.4 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.18 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.22 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
        item replace entity @s inventory.26 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
