#> inv.ui:pages/_/storage/item/set/slot.num
#   Slot番号をシュルカーボックスにそろえるための処理を行うfunction
# @within
#   function inv.ui:pages/_/storage/item/set/set.data
#   function inv.ui:pages/_/storage/item/set/slot.num

# 番号を整える
    # スコア代入
        $execute store result score #InventoryUI.Slot InventoryUI.Slot run data get storage inv.ui: Storage.SetWork[$(SlotLoop)].Slot
    # スコア整形
        scoreboard players remove #InventoryUI.Slot InventoryUI.Slot 9

# スロット番号に適用
    $execute store result storage inv.ui: Storage.SetWork[$(SlotLoop)].Slot int 1 run scoreboard players get #InventoryUI.Slot InventoryUI.Slot

# ループ番号がまだあったら再帰
    ## デクリメント
        execute store result score #InventoryUI.Slot InventoryUI.Loop run data get storage inv.ui: Storage.SlotLoop
        scoreboard players remove #InventoryUI.Slot InventoryUI.Loop 1
        execute store result storage inv.ui: Storage.SlotLoop int 1 run scoreboard players get #InventoryUI.Slot InventoryUI.Loop
    ## 再帰呼び出し
        execute unless score #InventoryUI.Slot InventoryUI.Loop matches 0.. run say 再帰しません
        execute if score #InventoryUI.Slot InventoryUI.Loop matches 0.. run function inv.ui:pages/_/storage/item/set/slot.num with storage inv.ui: Storage.
