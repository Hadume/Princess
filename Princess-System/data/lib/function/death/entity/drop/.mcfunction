#> lib:death/entity/drop/
# ドロップ品をドロップする
# @within function lib:death/entity/

## データをコピー
    data modify storage temp: Drop set from storage dat: _.Drop

##
    function lib:death/entity/drop/loop

## 一時使用storageを削除
    data remove storage temp: Drop
