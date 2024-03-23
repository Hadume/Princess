#> inv.ui:asset/any/next
# 
# @within 

# UICode
    data modify storage inv.ui: Asset.UICode set value 2
# Id
    data modify storage inv.ui: Asset.ItemID set value "arrow"
# Slot
    data modify storage inv.ui: Asset.Slot set value 26
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"次ページ"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"次ページへ行きます"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset.
