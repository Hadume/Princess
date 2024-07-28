#> inv.ui:asset/menu/status
#
# @within function inv.ui:pages/_/menu

# UICode
    data modify storage inv.ui: Asset.UICode set value 14
# Id
    data modify storage inv.ui: Asset.ItemID set value "player_head"
# Slot
    data modify storage inv.ui: Asset.Slot set value 13
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"ステータス"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"現在のステータスをここに表示"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset.
