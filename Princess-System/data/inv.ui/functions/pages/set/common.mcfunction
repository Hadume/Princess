#> inv.ui:pages/set/common
# アイテムの生成
# @within function inv.ui:pages/set/

# シュルカーにアイテム生成(ItemID変更のため、プレイヤーに直接lootできない)
    loot replace block 0 -64 0 hotbar.0 loot inv.ui:asset/common

# アイテムID変更
    data modify block 0 -64 0 Items[{Slot:0b}].id set from storage inv.ui: Asset.ItemID

# プレイヤーにコピー
    $item replace entity @s inventory.$(Slot) from block 0 -64 0 hotbar.0
