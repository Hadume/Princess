#> inv.ui:pages/_/storage/item/set/set.data
# 
# @within
#   function inv.ui:pages/_/storage/item/set/
#   function inv.ui:pages/_/storage/item/set/init/init.page

$say $(PageNumber)ページ目

# Inventoryデータ取得
    ## インベントリ読み込み
        function api:get.nbt/inventory/
    ## セット
        data modify storage inv.ui: Storage.InventoryWork set from storage api: Inventory
        data modify storage inv.ui: Storage.Test set from storage api: Inventory

# データセット
    ## ホットバーのアイテム除去
        ### 初期化
            data remove storage inv.ui: Storage.SetWork
        ### 探索
            function inv.ui:pages/_/storage/item/set/remove.hotbar.loop
    ## Slot番号の減算
        ### Loop用変数セット
            data modify storage inv.ui: Storage.SlotLoop set value 27
        function inv.ui:pages/_/storage/item/set/slot.num with storage inv.ui: Storage.
    ## データの移行
        $data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page$(PageNumber) set from storage inv.ui: Storage.SetWork
    ## UIアイテムの削除
        $data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page$(PageNumber)[{tag:{UiItem:1b}}]
    ## 終了処理
        data remove storage inv.ui: Storage.ItemWork
        data remove storage inv.ui: Storage.SetWork
        data remove storage inv.ui: Storage.InventoryWork
        data remove storage inv.ui: Storage.InventoryItemFlag
        data remove storage inv.ui: Storage.SlotLoop
