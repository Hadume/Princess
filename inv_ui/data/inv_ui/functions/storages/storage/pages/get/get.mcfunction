#> inv_ui:storages/storage/pages/get/get
#   get item id data

# data get
    # data modify
        # slot
            $execute store result score @s ui_storage_slot run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].storage.page$(page).slot[$(value)]
            scoreboard players remove @s ui_storage_slot 9
            execute store result storage ui:storage slot int 1 run scoreboard players get @s ui_storage_slot
        # id
            $data modify storage ui:storage id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].storage.page$(page).id[$(value)]
        # count
            $data modify storage ui:storage count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].storage.page$(page).count[$(value)]
        # tag
            data modify storage ui:storage tag set value {}
            $data modify storage ui:storage tag set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].storage.page$(page).tag[$(value)]
    # run
        function inv_ui:storages/storage/pages/get/getter with storage ui:storage

# 再帰処理
    # カウントインクリメント
        scoreboard players add @s ui_storage_value 1
        execute store result storage ui:storage value int 1 run scoreboard players get @s ui_storage_value
    # 再帰
        execute if score @s ui_storage_value <= @s ui_storage_length run function inv_ui:storages/storage/pages/get/get with storage ui:storage
