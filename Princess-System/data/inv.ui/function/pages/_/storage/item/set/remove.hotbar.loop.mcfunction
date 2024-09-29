#> inv.ui:pages/_/storage/item/set/remove.hotbar.loop
#
# @within function inv.ui:pages/_/storage/item/set/set.data
# @private

# 探索準備
    ## データを探索データ格納
        data modify storage inv.ui: Storage.ItemWork set from storage inv.ui: Storage.InventoryWork[-1]
    ## フラグリセット
        data modify storage inv.ui: Storage.InventoryItemFlag set value 0b

# チェック
    execute if data storage inv.ui: {Storage:{ItemWork:{Slot:0b}}} run data modify storage inv.ui: Storage.InventoryItemFlag set value 1b
    execute if data storage inv.ui: {Storage:{ItemWork:{Slot:1b}}} run data modify storage inv.ui: Storage.InventoryItemFlag set value 1b
    execute if data storage inv.ui: {Storage:{ItemWork:{Slot:2b}}} run data modify storage inv.ui: Storage.InventoryItemFlag set value 1b
    execute if data storage inv.ui: {Storage:{ItemWork:{Slot:3b}}} run data modify storage inv.ui: Storage.InventoryItemFlag set value 1b
    execute if data storage inv.ui: {Storage:{ItemWork:{Slot:4b}}} run data modify storage inv.ui: Storage.InventoryItemFlag set value 1b
    execute if data storage inv.ui: {Storage:{ItemWork:{Slot:5b}}} run data modify storage inv.ui: Storage.InventoryItemFlag set value 1b
    execute if data storage inv.ui: {Storage:{ItemWork:{Slot:6b}}} run data modify storage inv.ui: Storage.InventoryItemFlag set value 1b
    execute if data storage inv.ui: {Storage:{ItemWork:{Slot:7b}}} run data modify storage inv.ui: Storage.InventoryItemFlag set value 1b
    execute if data storage inv.ui: {Storage:{ItemWork:{Slot:8b}}} run data modify storage inv.ui: Storage.InventoryItemFlag set value 1b

# 更新処理
    ## ホットバーのアイテムではなかったら、リストに追加
        execute if data storage inv.ui: {Storage:{InventoryItemFlag:0b}} run data modify storage inv.ui: Storage.SetWork append from storage inv.ui: Storage.InventoryWork[-1]
    ## リストの最後尾を削除
        data remove storage inv.ui: Storage.InventoryWork[-1]
    ## データが残っていれば再帰
        execute if data storage inv.ui: Storage.InventoryWork[-1] run function inv.ui:pages/_/storage/item/set/remove.hotbar.loop
