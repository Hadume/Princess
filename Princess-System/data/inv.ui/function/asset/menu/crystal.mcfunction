#> inv.ui:asset/menu/crystal
#
# @within function inv.ui:pages/_/menu

# UICode
    data modify storage inv.ui: Asset.UICode set value 12
# Id
    data modify storage inv.ui: Asset.ItemID set value "iron_chestplate"
# Slot
    data modify storage inv.ui: Asset.Slot set value 11
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"クリスタル装備"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"アイテムにクリスタルをセットします"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset
