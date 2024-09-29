#> inv.ui:asset/menu/magic
#
# @within function inv.ui:pages/_/menu

# UICode
    data modify storage inv.ui: Asset.UICode set value 13
# Id
    data modify storage inv.ui: Asset.ItemID set value "red_dye"
# Slot
    data modify storage inv.ui: Asset.Slot set value 12
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"魔法変更"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"魔法を選択、変更します"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset
