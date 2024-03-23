#> inv.ui:asset/menu/com
# 
# @within function inv.ui:pages/_/menu

# UICode
    data modify storage inv.ui: Asset.UICode set value 17
# Id
    data modify storage inv.ui: Asset.ItemID set value "compass"
# Slot
    data modify storage inv.ui: Asset.Slot set value 16
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"コミュニケート"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"パーティの作成、トレードを行います"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset.
