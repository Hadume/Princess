#> player:effects/take/loop/main
# 効果を付与
# @within function player:effects/take/loop/

## 既に追加されている効果を消す
    $data remove storage dat: _.Effects[{Name:$(Name)}]

## データを追加
    data modify storage dat: _.Effects append from storage temp: Effect

## 効果によって
    execute if data storage temp: {Effect:{Name:"HP.Max"}} run function player:effects/take/loop/add.stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"MP.Max"}} run function player:effects/take/loop/add.stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"DEF"}} run function player:effects/take/loop/add.stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"ATK"}} run function player:effects/take/loop/add.stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"Mgc.Amount"}} run function player:effects/take/loop/add.stat with storage temp: Effect
