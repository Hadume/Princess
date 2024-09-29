#> inv.ui:asset/menu/skilltree
#
# @within function inv.ui:pages/_/menu

# UICode
    data modify storage inv.ui: Asset.UICode set value 11
# Id
    data modify storage inv.ui: Asset.ItemID set value "oak_sapling"
# Slot
    data modify storage inv.ui: Asset.Slot set value 10
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"スキルツリー"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"スキルツリーを確認します"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset
