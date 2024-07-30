#> inv.ui:asset/storage/item
# 
# @within function inv.ui:pages/_/storage

# UICode
    data modify storage inv.ui: Asset.UICode set value 501
# Id
    data modify storage inv.ui: Asset.ItemID set value "chest"
# Slot
    data modify storage inv.ui: Asset.Slot set value 11
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"ストレージ"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"ストレージを操作します"}]']

# アイテムセット
    function inv.ui:pages/set/
