#> inv_ui:storages/storage/get_item
#   アイテムを表示する

# 保存されたデータのリスト長を取得
    $execute store result score @s ui_storage_length run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].storage.page$(page).id

# アイテムをセット
    # 初期化
        scoreboard players set @s ui_storage_value 0
    # 引数用データの格納
        execute store result storage ui:storage value int 1 run scoreboard players get @s ui_storage_value

# get
    # run
        function inv_ui:storages/storage/pages/get/get with storage ui:storage
