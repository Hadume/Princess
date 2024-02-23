#> inv_ui:item_check/return/3
#   item return 3

# return
    $item replace entity @s hotbar.3 from entity @s inventory.$(ItemCheckValue)
    $item replace entity @s inventory.$(ItemCheckValue) with air

# set flag
    data modify storage ui:player ItemReturned set value 1b