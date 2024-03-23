#> inv.ui:asset/com/trade
# 
# @within function inv.ui:pages/_/com

# UICode
    data modify storage inv.ui: Asset.UICode set value -1
# Id
    data modify storage inv.ui: Asset.ItemID set value "emerald"
# Slot
    data modify storage inv.ui: Asset.Slot set value 15
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"アイテムトレード"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"アイテムトレードを行います"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset.
