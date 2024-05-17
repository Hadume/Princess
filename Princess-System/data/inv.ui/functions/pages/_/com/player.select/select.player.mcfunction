#> inv.ui:pages/_/com/player.select/select.player
# 
# @within function inv.ui:check/com/player.select

# ストレージにデータ代入
    ## 現在のインベントリ
        data modify storage inv.ui: Com.PlayerWork set from entity @s Inventory
        ### ホットバーのデータを削除
            data remove storage inv.ui: Com.SetWork
            function inv.ui:pages/_/com/player.select/remove.hotbar.loop
    ## UI用アイテムの削除
        data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player[{tag:{UiDummy:1b}}]
        data remove storage inv.ui: Com.SetWork[{tag:{UiDummy:1b}}]
    ## データ比較
        data remove storage inv.ui: Com.SelectedPlayer
        data remove storage inv.ui: Com.Select
        data modify storage inv.ui: Com.PersonalStorage set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player
        function inv.ui:pages/_/com/player.select/get.select with storage inv.ui: Com.
    ## データ削除
        data remove storage inv.ui: Com.PlayerWork
        data remove storage inv.ui: Com.PersonalStorage
        data remove storage inv.ui: Com.SetWork

# プレイヤーにリクエスト送信
    execute if data storage inv.ui: Com.SelectedPlayer run function inv.ui:pages/_/com/player.select/sent.request with storage inv.ui: Com.

# セレクトプレイヤーデータ削除
    data remove storage inv.ui: Com.SelectedPlayer
