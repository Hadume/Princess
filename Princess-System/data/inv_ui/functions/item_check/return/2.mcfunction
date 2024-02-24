#> inv_ui:item_check/return/2
#   item return 2
# @within function inv_ui:item_check/return

# return
    $item replace entity @s hotbar.2 from entity @s inventory.$(ItemCheckValue)
    $item replace entity @s inventory.$(ItemCheckValue) with air

# set flag
    data modify storage ui:player ItemReturned set value 1b
