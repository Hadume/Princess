#> inv.ui:asset/magic/0/2
# 
# @within function inv.ui:asset/magic/0/

# UICode
    data modify storage inv.ui: Asset.UICode set value 32
# Id
    data modify storage inv.ui: Asset.ItemID set value "yellow_stained_glass_pane"
# Slot
    #data modify storage inv.ui: Asset.Slot set value 0
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"魔法２の編集"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"クリックして魔法を選択します"}]']

# アイテムセット
    function inv.ui:pages/set/
