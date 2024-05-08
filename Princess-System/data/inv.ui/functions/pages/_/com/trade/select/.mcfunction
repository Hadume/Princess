#> inv.ui:pages/_/com/trade/
# 
# @within function inv.ui:pages/branch/com

# プレイヤーヘッドの取得
    ## シュルカーボックスの初期化
        ### 中身削除
            data remove block 0 -64 0 Items
        ### Ui部分にダミーアイテム配置
            item replace block 0 -64 0 inventory.0 with stone{UiDummy:1b} 1
            item replace block 0 -64 0 inventory.8 with stone{UiDummy:1b} 1
            item replace block 0 -64 0 inventory.9 with stone{UiDummy:1b} 1
            item replace block 0 -64 0 inventory.17 with stone{UiDummy:1b} 1
            item replace block 0 -64 0 hotbar.0 with stone{UiDummy:1b} 1
            item replace block 0 -64 0 hotbar.8 with stone{UiDummy:1b} 1
    ## 周囲のプレイヤーのプレイヤーヘッド取得
        ### 自身にリクエスト者タグをつける
            tag @s add UI.ComRequest
        ### リクエスト送信(半径nメートル以内のプレイヤー)
            execute as @a[tag=!UI.ComRequest,distance=..2] run function inv.ui:pages/_/com/player.select/
    ## アイテムをプレイヤーに代入
        loot replace entity @s inventory.0 27 mine 0 -64 0 minecraft:debug_stick
    ## 個人ストレージ <- シュルカーのitems
        data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player set from block 0 -64 0 Items
    ## タグ削除
        tag @s remove UI.ComRequest

# 操作UI
    ## back
        function inv.ui:asset/any/back 

# 枠
    item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    item replace entity @s inventory.9 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    item replace entity @s inventory.17 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    item replace entity @s inventory.18 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
    item replace entity @s inventory.26 with black_stained_glass_pane{display:{Name:'[{"text":""}]'},UiItem:1b}
