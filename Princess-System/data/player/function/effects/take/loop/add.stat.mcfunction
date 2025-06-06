#> player:effects/take/loop/add.stat
# Statsに追加
# @within function player:effects/take/loop/main

## データを消す
    $data remove storage dat: _.Stats[{Name:$(Name)}]

## データを追加
    data modify storage dat: _.Stats append value {Name:"",Amount:0,id:"Effect"}

## データを設定
    data modify storage dat: _.Stats[-1].Name set from storage temp: Effect.Name
    data modify storage dat: _.Stats[-1].Amount set from storage temp: Effect.Amount

## Statsを更新
    $data modify storage lib: Stats set value [$(Name)]
    function #lib:stats/update
