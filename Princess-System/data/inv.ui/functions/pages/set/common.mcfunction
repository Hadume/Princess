#> inv.ui:pages/set/common
# 
# @within function inv.ui:pages/set/

# シュルカーにアイテム生成
    loot replace block 0 -64 0 hotbar.0 loot inv.ui:asset/common

# アイテムID変更
    data modify block 0 -64 0 Items[{Slot:0b}].id set from storage inv.ui: Asset.ItemID

# プレイヤーにコピー
    $item replace entity @s inventory.$(Slot) from block 0 -64 0 hotbar.0

# シュルカーの中身削除
    data remove block 0 -64 0 Items
