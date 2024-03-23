#> inv.ui:pages/_/storage/item/get
#   ストレージアイテムゲット
# @within function inv.ui:pages/_/storage/item/

# アイテムをストレージからコピー
    ## アイテム操作用エンティティ
        summon armor_stand ~ ~ ~ {Tags:["Inventory.ItemGetter"],Marker:1b,NoGravity:1b,Invisible:1b}
    ## データコピー
        $data modify storage inv.ui: Storage.GetInventory set from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page$(PageNumber)[0]
    ## アイテム返品
        function inv.ui:pages/_/storage/item/get.data

# 操作用エンティティ削除
    kill @e[tag=Inventory.ItemGetter,sort=nearest,limit=1]
