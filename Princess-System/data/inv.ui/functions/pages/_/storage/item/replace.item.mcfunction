#> inv.ui:pages/_/storage/item/replace.item
# 
# @within function inv.ui:pages/_/storage/item/get.data

# replace
    $item replace entity @s inventory.$(SlotWork) from entity @e[tag=Inventory.ItemGetter,sort=nearest,limit=1] weapon.mainhand
