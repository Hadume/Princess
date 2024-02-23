#> inv_ui:item_check/return/6
#   item return 6

# return
    $item replace entity @s hotbar.6 from entity @s inventory.$(ItemCheckValue)
    $item replace entity @s inventory.$(ItemCheckValue) with air

# set flag
    data modify storage ui:player ItemReturned set value 1b