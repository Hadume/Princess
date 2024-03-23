#> inv.ui:pages/_/storage/item/get.data
#   データゲット
# @within
#   function inv.ui:pages/_/storage/item/get
#   function inv.ui:pages/_/storage/item/get.data

# データを取得して格納
    data modify storage inv.ui: Storage.Work set from storage inv.ui: Storage.GetInventory[-1]

# スロット番号コピー
    data modify storage inv.ui: Storage.SlotWork set from storage inv.ui: Storage.Work.Slot

# エンティティにアイテムを持たせてプレイヤーにコピー
    data modify entity @e[tag=Inventory.ItemGetter,sort=nearest,limit=1] HandItems[0] set from storage inv.ui: Storage.Work

# アイテムコピー
    function inv.ui:pages/_/storage/item/replace.item with storage inv.ui: Storage.

# 再帰
    ## データ更新
        data remove storage inv.ui: Storage.GetInventory[-1]
    ## まだデータが残ってたら実行
        execute if data storage inv.ui: Storage.GetInventory[-1] run function inv.ui:pages/_/storage/item/get.data
