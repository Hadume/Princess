#> inv.ui:asset/com/party
# 
# @within function inv.ui:pages/_/com

# UICode
    data modify storage inv.ui: Asset.UICode set value -1
# Id
    data modify storage inv.ui: Asset.ItemID set value "compass"
# Slot
    data modify storage inv.ui: Asset.Slot set value 11
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"パーティ作成"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"パーティの作成、参加を行います"}]']

# アイテムセット
    function inv.ui:pages/set/
