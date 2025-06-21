#> asset.lib:spawner/tick/spawn
# スポーンできるか確認
# @within function asset.lib:spawner/tick/

## データをコピー
    data modify storage temp: data set from entity @s data

## 範囲内にプレイヤーがいるか確認
    data modify storage lib: range.amount set from storage temp: data.RequiredPlayerrange
    data modify storage lib: range merge value {Targets:["Player"],Pierce:1}
    function #lib:range

## 範囲内のMOB数の確認
    execute store result storage lib: range.amount float 0.01 run data get storage temp: data.range 200
    data modify storage lib: range.Pierce set from storage temp: data.MaxNearbyEntities
    data modify storage lib: range.Targets set value ["enemy"]
    function #lib:range

## スポーン
    execute unless data storage lib: {range:{Pierced:0}} if entity @a[tag=libInrange] run function asset.lib:spawner/spawn/

## 範囲内tagを削除
    execute as @e[tag=libInrange] run tag @s remove libInrange

## 一時使用storageを削除
    data remove storage temp: data
