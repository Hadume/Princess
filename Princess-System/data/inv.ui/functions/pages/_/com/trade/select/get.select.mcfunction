#> inv.ui:pages/_/com/trade/select/get.select
#   選択されたプレイヤーを取得
#   引数 $(SelectWork) <= inv.ui: Com.PlayerStorage.tag.SkullOwner.Id
#       data:player SetWork[-1]と$(SelectWork)を比較
#           inv.ui: Com.SetWorkにはUUIDのみが格納されている
# @within
#   function inv.ui:pages/_/com/trade/select/select.player
#   function inv.ui:pages/_/com/trade/select/get.select

# 前処理
    ## 比較データ代入
        data modify storage inv.ui: Com.Select set from storage inv.ui: Com.SetWork[-1]

# データ比較
    $execute unless data storage inv.ui: {Com:{Select:$(SelectWork)}} run data modify storage inv.ui: Com.SelectedPlayer set from storage inv.ui: Com.PlayerStorage[-1].tag.SkullOwner.Id

# 再帰処理
    ## データ削除
        ### 比較データ
            data remove storage inv.ui: Com.PlayerStorage[-1]
            data remove storage inv.ui: Com.SetWork[-1]
        ### 比較用変数
            data remove storage inv.ui: Com.Select
            data remove storage inv.ui: Com.SelectWork
    ## まだデータがあれば再帰処理
        execute if data storage inv.ui: Com.SetWork[-1] run function inv.ui:pages/_/com/trade/select/get.select with storage inv.ui: Com.
