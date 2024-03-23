#> inv.ui:asset/any/prev
# 
# @within 

# UICode
    data modify storage inv.ui: Asset.UICode set value 1
# Id
    data modify storage inv.ui: Asset.ItemID set value "arrow"
# Slot
    data modify storage inv.ui: Asset.Slot set value 18
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"前ページ"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"前ページへ行きます"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset.
