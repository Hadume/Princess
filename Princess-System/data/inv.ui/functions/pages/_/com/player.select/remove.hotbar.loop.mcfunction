#> inv.ui:pages/_/com/player.select/remove.hotbar.loop
# 
# @within
#   function inv.ui:pages/_/com/player.select/select.player
#   function inv.ui:pages/_/com/player.select/remove.hotbar.loop

# 探索準備
    ## データを探索データ格納
        data modify storage inv.ui: Storage.ItemWork set from storage inv.ui: Com.PlayerWork[-1]
    ## フラグリセット
        data modify storage inv.ui: Com.PlayerFlag set value 0b

# チェック
    execute if data storage inv.ui: {Com:{PlayerWork:{Slot:0b}}} run data modify storage inv.ui: Com.PlayerFlag set value 1b
    execute if data storage inv.ui: {Com:{PlayerWork:{Slot:1b}}} run data modify storage inv.ui: Com.PlayerFlag set value 1b
    execute if data storage inv.ui: {Com:{PlayerWork:{Slot:2b}}} run data modify storage inv.ui: Com.PlayerFlag set value 1b
    execute if data storage inv.ui: {Com:{PlayerWork:{Slot:3b}}} run data modify storage inv.ui: Com.PlayerFlag set value 1b
    execute if data storage inv.ui: {Com:{PlayerWork:{Slot:4b}}} run data modify storage inv.ui: Com.PlayerFlag set value 1b
    execute if data storage inv.ui: {Com:{PlayerWork:{Slot:5b}}} run data modify storage inv.ui: Com.PlayerFlag set value 1b
    execute if data storage inv.ui: {Com:{PlayerWork:{Slot:6b}}} run data modify storage inv.ui: Com.PlayerFlag set value 1b
    execute if data storage inv.ui: {Com:{PlayerWork:{Slot:7b}}} run data modify storage inv.ui: Com.PlayerFlag set value 1b
    execute if data storage inv.ui: {Com:{PlayerWork:{Slot:8b}}} run data modify storage inv.ui: Com.PlayerFlag set value 1b

# 更新処理
    ## ホットバーのアイテムではなかったら、リストに追加
        execute if data storage inv.ui: {Com:{PlayerFlag:0b}} run data modify storage inv.ui: Com.SetWork append from storage inv.ui: Com.PlayerWork[-1].tag.SkullOwner.Id
    ## リストの最後尾を削除
        data remove storage inv.ui: Com.PlayerWork[-1]
    ## データが残っていれば再帰
        execute if data storage inv.ui: Com.PlayerWork[-1] run function inv.ui:pages/_/com/player.select/remove.hotbar.loop
