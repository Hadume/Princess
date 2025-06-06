#> menu:communicate/root/ui/page/make.loop
# ページデータを作成
# @within function menu:communicate/root/ui/page/
# @private

## アイテム
    data modify storage temp: PageData append from storage temp: PlayerData[-1]

## Slot
    data modify storage temp: PageData[-1].Slot set from storage temp: Slots[0]
    data remove storage temp: Slots[0]

## データを消す
    data remove storage temp: PlayerData[-1]

## ループ
    execute if data storage temp: PlayerData[] if data storage temp: Slots[] run function menu:communicate/root/ui/page/make.loop
