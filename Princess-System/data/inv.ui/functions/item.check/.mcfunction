#> inv.ui:item.check/
#   アイテム返品チェック
# @within function inv.ui:

# インベントリ取得
    function api:get.nbt/inventory
    data modify storage inv.ui: Player.Inventory set from storage api: Inventory

# 返品処理
    ## any
        execute if score @s InventoryUI.Page matches 0..9 run function inv.ui:item.check/page/any
        execute if score @s InventoryUI.Page matches 10..19 run function inv.ui:item.check/page/any
        execute if score @s InventoryUI.Page matches 20..29 run function inv.ui:item.check/page/any
        execute if score @s InventoryUI.Page matches 40..49 run function inv.ui:item.check/page/any
        execute if score @s InventoryUI.Page matches 50..59 run function inv.ui:item.check/page/any
        execute if score @s InventoryUI.Page matches 60..69 run function inv.ui:item.check/page/any
        execute if score @s InventoryUI.Page matches 70..79 run function inv.ui:item.check/page/any
    ## magic
        execute if score @s InventoryUI.Page matches 30 run function inv.ui:item.check/page/magic

# ストレージ削除
    data remove storage inv.ui: Player.
