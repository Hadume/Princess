#> lib:death/entity/drop/loop
# ドロップアイテムをループでドロップ
# @within function lib:death/entity/drop/
# @private

## ループ終了
    execute unless data storage temp: Drop[] run return 1

## データをコピー
    data modify storage temp: Item set from storage temp: Drop[-1]

## 確率で落とす
    execute if predicate lib:death/drop run function lib:death/entity/drop/item

## データを削除
    data remove storage temp: Drop[-1]

## ループ
    function lib:death/entity/drop/loop
