#> inv_ui:storages/storage/pages/get/getter
#   アイテムを格納
# @within function inv_ui:storages/storage/pages/get/get

# 格納
    $item replace entity @s inventory.$(slot) with $(id)$(tag) $(count)
