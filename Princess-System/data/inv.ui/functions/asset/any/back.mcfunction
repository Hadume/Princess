#> inv.ui:asset/any/back
# 
# @within 

# UICode
    data modify storage inv.ui: Asset.UICode set value 0
# Id
    data modify storage inv.ui: Asset.ItemID set value "arrow"
# Slot
    data modify storage inv.ui: Asset.Slot set value 0
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"戻る"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"ひとつ前の画面に戻ります"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset.
