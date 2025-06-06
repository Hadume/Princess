#> lib:die/entity/drop/loop
# ドロップアイテムをループでドロップ
# @within function lib:die/entity/drop/
# @private

## ループ終了
    execute unless data storage temp: Drop[] run return 1

## データをコピー
    data modify storage temp: Item set from storage temp: Drop[-1]

## 確率で落とす
    execute if predicate lib:die/drop run function lib:die/entity/drop/item

## データを削除
    data remove storage temp: Drop[-1]

## ループ
    function lib:die/entity/drop/loop
