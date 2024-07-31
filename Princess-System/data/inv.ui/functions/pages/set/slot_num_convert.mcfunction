#> inv.ui:pages/set/slot_num_convert
# スロットナンバーを整形
# @within
#   function inv.ui:pages/set/insert
#   function inv.ui:pages/set/slot_num_convert

# 番号を整える
    # スコア代入
        $execute store result score #InventoryUI Temp run data get storage inv.ui: Asset.SetWork[$(SlotLoop)].Slot
    # スコア整形
        scoreboard players remove #InventoryUI Temp 9

# スロット番号に適用
    $execute store result storage inv.ui: Asset.SetWork[$(SlotLoop)].Slot int 1 run scoreboard players get #InventoryUI Temp

# ループ番号がまだあったら再帰
    ## デクリメント
        execute store result score #InventoryUI InventoryUI.Loop run data get storage inv.ui: Asset.SlotLoop
        scoreboard players remove #InventoryUI InventoryUI.Loop 1
        execute store result storage inv.ui: Asset.SlotLoop int 1 run scoreboard players get #InventoryUI InventoryUI.Loop
    ## 再帰呼び出し
        execute if score #InventoryUI InventoryUI.Loop matches 0.. run function inv.ui:pages/set/slot_num_convert with storage inv.ui: Asset.
