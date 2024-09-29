#> inv.ui:asset/quest/cleared
#
# @within function inv.ui:pages/_/quest

# UICode
    data modify storage inv.ui: Asset.UICode set value -1
# Id
    data modify storage inv.ui: Asset.ItemID set value "book"
# Slot
    data modify storage inv.ui: Asset.Slot set value 9
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"クリア済みクエスト"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"過去にクリアしたクエストを表示します"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset
