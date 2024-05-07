#> inv.ui:pages/_/com/trade/
# 
# @within function inv.ui:pages/branch/com

# ストレージにデータ代入(ここ後でアイテムストレージの時と同じく呼び出された場所によって処理する関数分けて)
    ## 個人ストレージ <- シュルカーのitems
        data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player set from block 0 -64 0 Items
    ## 現在のインベントリ
        data modify storage inv.ui: Com.PlayerWork set from entity @s Inventory
        ### ホットバーのデータを削除
            data remove storage inv.ui: Com.SetWork
            function inv.ui:pages/_/com/trade/select/remove.hotbar.loop
    ## UI用アイテムの削除
        data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player[{tag:{UiDummy:1b}}]
        data remove storage inv.ui: Com.SetWork[{tag:{UiDummy:1b}}]
    ## データ比較
        data remove storage inv.ui: Com.SelectedPlayer
        data remove storage inv.ui: Com.Select
        data modify storage inv.ui: Com.SelectWork set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player[-1].tag.SkullOwner.Id
        function inv.ui:pages/_/com/trade/select/get.select with storage inv.ui: Com.
    ## データ削除
        data remove storage inv.ui: Com.PlayerFlag
        data remove storage inv.ui: Com.PlayerWork
        data remove storage inv.ui: Com.SetWork

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
        ### リクエスト送信(半径2m以内のプレイヤー)
            execute as @a[tag=UI.ComRequest,distance=..2] run function inv.ui:pages/_/com/player.select/
    ## アイテムをプレイヤーに代入
        loot replace entity @s inventory.0 27 mine 0 -64 0 minecraft:debug_stick
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
