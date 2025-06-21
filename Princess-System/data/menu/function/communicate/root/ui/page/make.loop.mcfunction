#> menu:communicate/root/ui/page/make.loop
# ページデータを作成
# @within function menu:communicate/root/ui/page/
# @private

## アイテム
    data modify storage temp: pageData append from storage temp: PlayerData[-1]

## slot
    data modify storage temp: pageData[-1].slot set from storage temp: slots[0]
    data remove storage temp: slots[0]

## データを消す
    data remove storage temp: PlayerData[-1]

## ループ
    execute if data storage temp: PlayerData[] if data storage temp: slots[] run function menu:communicate/root/ui/page/make.loop
