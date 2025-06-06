#> menu:communicate/root/ui/page/
# ページデータを取得
# @within function menu:communicate/root/ui/

## ページデータを返す
    $execute if data storage dat: _.Menu.Communicate.Page[$(PageNum)] run return run data modify storage temp: PageData set from storage dat: _.Menu.Communicate.Page[$(PageNum)]

## ページデータを作成
    ### データをコピー
        data modify storage temp: PlayerData set from storage dat: _.Menu.Communicate.PlayerData

    ### データを作成
        data modify storage temp: PageData set value []

    ### Slotを初期化
        data modify storage temp: Slots set value [1b, 2b, 3b, 4b, 5b, 6b, 7b, 10b, 11b, 12b, 13b, 14b, 15b, 16b, 19b, 20b, 21b, 22b, 23b, 24b, 25b]

    ### 作成
        execute if data storage temp: PlayerData[] run function menu:communicate/root/ui/page/make.loop

    ### データを保存
        data modify storage dat: _.Menu.Communicate.Page append from storage temp: PageData
        data modify storage dat: _.Menu.Communicate.PlayerData set from storage temp: PlayerData

    ### 一時使用Storageを削除
        data remove storage temp: PlayerData
        data remove storage temp: Slots
