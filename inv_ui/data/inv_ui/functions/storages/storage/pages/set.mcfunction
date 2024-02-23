#> inv_ui:storages/storage/pages/set
#   page item id data
#

# data set
    # slot
        $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].storage.page$(page).slot append from entity @s Inventory[$(value)].Slot
    # id
        $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].storage.page$(page).id append from entity @s Inventory[$(value)].id
    # count
        $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].storage.page$(page).count append from entity @s Inventory[$(value)].Count
    # tag
        $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].storage.page$(page).tag append from entity @s Inventory[$(value)].tag


# 再帰処理
    # カウントデクリメント
        scoreboard players add @s ui_storage_value 1
        execute store result storage ui:storage value int 1 run scoreboard players get @s ui_storage_value
    # 再帰
        execute if score @s ui_storage_value <= @s ui_storage_length run function inv_ui:storages/storage/pages/set with storage ui:storage 
