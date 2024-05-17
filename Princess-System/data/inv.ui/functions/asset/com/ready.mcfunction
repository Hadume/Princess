#> inv.ui:asset/com/ready
# 
# @within function inv.ui:pages/_/com/trade/**

# UICode
    data modify storage inv.ui: Asset.UICode set value 712
# Id
    data modify storage inv.ui: Asset.ItemID set value "lime_stained_glass_pane"
# Slot
    data modify storage inv.ui: Asset.Slot set value 13
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"トレード！"}'
# Lore
    data modify storage inv.ui: Asset.Lore set value ['[{"text":"トレード準備を完了します"}]']

# アイテムセット
    function inv.ui:pages/set with storage inv.ui: Asset.
