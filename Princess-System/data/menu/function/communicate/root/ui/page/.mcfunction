#> menu:communicate/root/ui/page/
# ページデータを取得
# @within function menu:communicate/root/ui/

## ページデータを返す
    $execute if data storage dat: _.menu.Communicate.page[$(pageNum)] run return run data modify storage temp: pageData set from storage dat: _.menu.Communicate.page[$(pageNum)]

## ページデータを作成
    ### データをコピー
        data modify storage temp: PlayerData set from storage dat: _.menu.Communicate.PlayerData

    ### データを作成
        data modify storage temp: pageData set value []

    ### slotを初期化
        data modify storage temp: slots set value [1b, 2b, 3b, 4b, 5b, 6b, 7b, 10b, 11b, 12b, 13b, 14b, 15b, 16b, 19b, 20b, 21b, 22b, 23b, 24b, 25b]

    ### 作成
        execute if data storage temp: PlayerData[] run function menu:communicate/root/ui/page/make.loop

    ### データを保存
        data modify storage dat: _.menu.Communicate.page append from storage temp: pageData
        data modify storage dat: _.menu.Communicate.PlayerData set from storage temp: PlayerData

    ### 一時使用storageを削除
        data remove storage temp: PlayerData
        data remove storage temp: slots
