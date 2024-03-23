#> inv.ui:item.check/page/any
#   メニューから返品？
# @within
#   function inv.ui:item.check/
#   function inv.ui:item.check/page/any

# Workにデータ格納
    data modify storage inv.ui: Player.Work set from storage inv.ui: Player.Inventory[-1]

# Slot番号を取得
    execute store result score #InventoryUI.Slot InventoryUI.Slot run data get storage inv.ui: Player.Work.Slot

# データ格納
    summon item ~ ~ ~ {PickupDelay:1s,Tags:["Item.Return"],Item:{id:"minecraft:shulker_box",Count:1b}}
    execute unless data storage inv.ui: {Player:{Work:{tag:{UiItem:1b}}}} unless score #InventoryUI.Slot InventoryUI.Slot matches 0..8 run function inv.ui:item.check/return.item
    damage @e[tag=Item.Return,sort=nearest,limit=1] 100

# 再帰処理
    ## データ更新
        data remove storage inv.ui: Player.Inventory[-1]
    ## run
        execute if data storage inv.ui: Player.Inventory[-1] run function inv.ui:item.check/page/any
