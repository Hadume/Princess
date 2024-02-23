#> inv_ui:item_check/return/4
#   item return 4

# return
    $item replace entity @s hotbar.4 from entity @s inventory.$(ItemCheckValue)
    $item replace entity @s inventory.$(ItemCheckValue) with air

# set flag
    data modify storage ui:player ItemReturned set value 1b