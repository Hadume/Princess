#> inv.ui:asset/storage/material
# 
# @within function inv.ui:pages/_/storage

# UICode
    data modify storage inv.ui: Asset.UICode set value 502
# Id
    data modify storage inv.ui: Asset.ItemID set value "barrel"
# Slot
    data modify storage inv.ui: Asset.Slot set value 15
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"素材"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"素材ストレージを操作します"}]']

# アイテムセット
    function inv.ui:pages/set/
