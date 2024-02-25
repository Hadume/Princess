#> inv_ui:item_check/return/0
#   item return 0
# @within function inv_ui:item_check/return

# return
    $item replace entity @s hotbar.0 from entity @s inventory.$(ItemCheckValue)
    $item replace entity @s inventory.$(ItemCheckValue) with air

# set flag
    data modify storage ui:player ItemReturned set value 1b
