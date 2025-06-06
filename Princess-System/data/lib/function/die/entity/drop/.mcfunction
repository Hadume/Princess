#> lib:die/entity/drop/
# ドロップ品をドロップする
# @within function lib:die/entity/

## データをコピー
    data modify storage temp: Drop set from storage dat: _.Drop

##
    function lib:die/entity/drop/loop

## 一時使用Storageを削除
    data remove storage temp: Drop
