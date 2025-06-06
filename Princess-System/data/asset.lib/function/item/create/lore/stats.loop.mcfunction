#> asset.lib:item/create/lore/stats.loop
#
# @within function asset.lib:item/create/stats
# @private

## ループを終了
    execute unless data storage asset:item Stats[] run return 1

## データを初期化
    data remove storage temp: Amount

## 効果をコピー
    data modify storage temp: Stat set from storage asset:item Stats[0]

## 効果名
    execute if data storage temp: {Stat:{Name:"HP.Max"}} run data modify storage temp: Amount.Name set value "最大体力"
    execute if data storage temp: {Stat:{Name:"MP.Max"}} run data modify storage temp: Amount.Name set value "最大魔力"
    execute if data storage temp: {Stat:{Name:"ATK"}} run data modify storage temp: Amount.Name set value "攻撃力"
    execute if data storage temp: {Stat:{Name:"DEF"}} run data modify storage temp: Amount.Name set value "防御力"
    execute if data storage temp: {Stat:{Name:"Speed"}} run data modify storage temp: Amount.Name set value "スピード"
    execute if data storage temp: {Stat:{Name:"HP.Rgn.Per"}} run data modify storage temp: Amount.Name set value "体力回復力"
    execute if data storage temp: {Stat:{Name:"MP.Rgn.Per"}} run data modify storage temp: Amount.Name set value "魔力回復力"

## 接尾
    execute if data storage temp: {Stat:{Operation:1}} run data modify storage temp: Amount.Suffix set value "%"
    execute if data storage temp: {Stat:{Operation:2}} run data modify storage temp: Amount.Suffix set value "%"

## 説明を生成
    execute in overworld run item modify block 0 -64 0 container.0 asset.lib:item/create/lore/stat

## データを削除
    data remove storage asset:item Stats[0]

## ループ
    function asset.lib:item/create/lore/stats.loop
