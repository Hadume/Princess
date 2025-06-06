#> asset.lib:spawner/set/main
#
# @within function asset.lib:spawner/set/check.condition

## 位置を調整
    execute align xyz run tp @s ~0.5 ~ ~0.5

## データを移行
    data modify storage temp: data.Data set from storage asset:spawner Data
    data modify storage temp: data.Count set from storage asset:spawner Count
    data modify storage temp: data.Range set from storage asset:spawner Range
    data modify storage temp: data.Delay set from storage asset:spawner Delay
    data modify storage temp: data.MaxNearbyEntities set from storage asset:spawner MaxNearbyEntities
    data modify storage temp: data.RequiredPlayerRange set from storage asset:spawner RequiredPlayerRange
    ###
        data modify entity @s data set from storage temp: data


## 召喚までの間隔
    function asset.lib:spawner/common/set.delay

## スポナーtagを追加
    tag @s add Spawner

## 一時使用Storageを削除
    data remove storage temp: data
