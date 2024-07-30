#> inv.ui:asset/menu/storage
# 
# @within function inv.ui:pages/_/menu

# UICode
    data modify storage inv.ui: Asset.UICode set value 15
# Id
    data modify storage inv.ui: Asset.ItemID set value "chest"
# Slot
    data modify storage inv.ui: Asset.Slot set value 14
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"ストレージ"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"アイテムストレージを開きます"}]']

# アイテムセット
    function inv.ui:pages/set/
