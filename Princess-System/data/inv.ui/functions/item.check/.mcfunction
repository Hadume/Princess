#> inv.ui:item.check/
#   アイテム返品チェック
# @within function inv.ui:

# インベントリ取得
    function api:get.nbt/inventory/
    data modify storage inv.ui: Player.Inventory set from storage api: Inventory

# 返品処理
    execute if score @s InventoryUI.Page matches 0..70 run function inv.ui:item.check/page/any
    execute if score @s InventoryUI.Page matches 711 run function inv.ui:item.check/page/any
    execute if score @s InventoryUI.Page matches 7712 run function inv.ui:item.check/page/com/trade

# ストレージ削除
    data remove storage inv.ui: Player.
