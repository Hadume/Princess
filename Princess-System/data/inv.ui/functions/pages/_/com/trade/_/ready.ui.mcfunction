#> inv.ui:pages/_/com/trade/_/ready.ui
# 
# @within function inv.ui:pages/_/com/trade/

# タグ付け
    scoreboard players operation #InventoryUI.Com InventoryUI.TradeID = @s InventoryUI.TradeID
    execute as @a if score @s InventoryUI.TradeID = #InventoryUI.Com InventoryUI.TradeID run tag @s add UI.TradeSync
    tag @s remove UI.TradeSync

# 準備表示
    ## 自分自身
        execute if entity @s[tag=!UI.TradeReady] run item replace entity @s inventory.18 with red_stained_glass_pane{display:{Name:'[{"text":"UnReady..."}]'},UiItem:1b}
        execute if entity @s[tag=UI.TradeReady] run item replace entity @s inventory.18 with lime_stained_glass_pane{display:{Name:'[{"text":"Ready!"}]'},UiItem:1b}

# 相手準備表示
    ## 相手のものを表示
        execute if entity @s[tag=UI.TradeReady] run item replace entity @a[tag=UI.TradeSync,limit=1] inventory.26 with lime_stained_glass_pane{display:{Name:'[{"text":"Ready!"}]'},UiItem:1b}
    ## 自分のものを表示
        execute if entity @a[tag=UI.TradeSync,tag=UI.TradeReady,limit=1] run item replace entity @s inventory.26 with lime_stained_glass_pane{display:{Name:'[{"text":"Ready!"}]'},UiItem:1b}

# 二人とも準備完了だったらトレード実行
    execute if entity @s[tag=UI.TradeReady] if entity @a[tag=UI.TradeSync,tag=UI.TradeReady] run execute as @a if score @s InventoryUI.TradeID = #InventoryUI.Com InventoryUI.TradeID run function inv.ui:pages/_/com/trade/_/item.trede

# タグ削除
    tag @a remove UI.TradeSync