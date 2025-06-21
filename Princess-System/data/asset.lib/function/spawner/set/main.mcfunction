#> asset.lib:spawner/set/main
#
# @within function asset.lib:spawner/set/check.condition

## 位置を調整
    execute align xyz run tp @s ~0.5 ~ ~0.5

## データを移行
    data modify storage temp: data.Data set from storage asset:spawner Data
    data modify storage temp: data.Count set from storage asset:spawner Count
    data modify storage temp: data.range set from storage asset:spawner range
    data modify storage temp: data.Delay set from storage asset:spawner Delay
    data modify storage temp: data.MaxNearbyEntities set from storage asset:spawner MaxNearbyEntities
    data modify storage temp: data.RequiredPlayerrange set from storage asset:spawner RequiredPlayerrange
    ###
        data modify entity @s data set from storage temp: data


## 召喚までの間隔
    function asset.lib:spawner/common/set.delay

## スポナーtagを追加
    tag @s add spawner

## 一時使用storageを削除
    data remove storage temp: data
