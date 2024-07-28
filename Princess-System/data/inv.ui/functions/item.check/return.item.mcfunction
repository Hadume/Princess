#> inv.ui:item.check/return.item
#   アイテム返品
# @within function inv.ui:item.check/page/**

# data set
    data modify entity @e[type=item,limit=1] Item.tag.BlockEntityTag.Items append from storage inv.ui: Player.Work
