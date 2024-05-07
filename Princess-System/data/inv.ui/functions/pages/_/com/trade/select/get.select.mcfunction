#> inv.ui:pages/_/com/trade/select/get.select
#   選択されたプレイヤーを取得
#   引数 $(SelectWork) <=  _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player[-1]
#       data:player SetWork[-1]と$(SelectWork)を比較
# @within
#   function inv.ui:pages/_/com/trade/select/
#   function inv.ui:pages/_/com/trade/select/get.select

# 前処理
    ## フラグデータリセット
        data modify storage inv.ui: Com.PlayerFlag set value 0b
    ## 比較データ代入
        data modify storage inv.ui: Com.Select set from storage inv.ui: Com.SetWork[-1].tag.SkullOwner.Id

# データ比較
    $execute unless data storage inv.ui: {Com:{Select:$(SelectWork)}} run data modify storage inv.ui: Com.PlayerFlag set value 1b

# フラグチェックして代入
    execute if data storage inv.ui: {Com:{PlayerFlag:1b}} run data modify storage inv.ui: Com.SelectedPlayer set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player[-1]

# 再帰処理
    ## データ削除
        data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player[-1]
        data remove storage inv.ui: Com.SetWork[-1]
        data remove storage inv.ui: Com.Select
        data remove storage inv.ui: Com.SelectWork
    ## まだデータがあれば再帰処理
        execute if data storage inv.ui: Com.SetWork[-1] run function inv.ui:pages/_/com/trade/select/get.select with storage inv.ui: Com.
