#> inv.ui:asset/menu/quest
# 
# @within function inv.ui:pages/_/menu

# UICode
    data modify storage inv.ui: Asset.UICode set value 16
# Id
    data modify storage inv.ui: Asset.ItemID set value "paper"
# Slot
    data modify storage inv.ui: Asset.Slot set value 15
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"クエスト確認"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"現在受けているクエスト、過去に受けたクエストを確認します"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset.
