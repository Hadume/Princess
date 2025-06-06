#> lib:stats/add/loop
#
# @within function lib:stats/add/
# @private

## ループ終了
    execute unless data storage lib: Stats.value[] run return 1

##
    data modify storage dat: _.Stats append from storage lib: Stats.value[-1]

## どこから追加されたかを記録
    data modify storage dat: _.Stats[-1].id set from storage lib: Stats.id

## データを消す
    data remove storage lib: Stats.value[-1]

## ループ
    function lib:stats/add/loop
