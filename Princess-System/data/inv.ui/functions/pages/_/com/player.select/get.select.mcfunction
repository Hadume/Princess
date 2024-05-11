#> inv.ui:pages/_/com/player.select/get.select
#   選択されたプレイヤーを取得
#       Select <- データを比較するための変数
#       SetWork <- 比較されるデータを格納
#       PersonalStorage <- 比較するデータを格納
# @within
#   function inv.ui:pages/_/com/player.select/select.player
#   function inv.ui:pages/_/com/player.select/get.select

# 比較データ代入
    data modify storage inv.ui: Com.Select set from storage inv.ui: Com.SetWork[-1]

# データ比較
        execute store success score #InventoryUI.Com Temp run data modify storage inv.ui: Com.Select set from storage inv.ui: Com.PersonalStorage[-1].tag.PlayerID

# データが違ったらストレージに格納
    execute if score #InventoryUI.Com Temp matches 1 run data modify storage inv.ui: Com.SelectedPlayer set from storage inv.ui: Com.PersonalStorage[-1].tag.PlayerID

# 再帰処理
    ## データ削除
        ### 比較データ
            data remove storage inv.ui: Com.PersonalStorage[-1]
            data remove storage inv.ui: Com.SetWork[-1]
        ### 比較用変数
            data remove storage inv.ui: Com.Select
    ## まだデータがあれば再帰処理
        execute if data storage inv.ui: Com.SetWork[-1] run function inv.ui:pages/_/com/player.select/get.select with storage inv.ui: Com.
