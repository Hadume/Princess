#> asset.lib:item/create/lore/modifiers/loop
#
# @within function asset.lib:item/create/lore/modifiers/
# @private

## ループを終了
    execute unless data storage asset:item modifiers[] run return 1

## データを初期化
    data remove storage temp: amount

## 効果をコピー
    data modify storage temp: modifier set from storage asset:item modifiers[0]

## 効果名
    execute if data storage temp: modifier{name:"hpMax"} run data modify storage temp: amount.name set value "最大体力"
    execute if data storage temp: modifier{name:"mpMax"} run data modify storage temp: amount.name set value "最大魔力"
    execute if data storage temp: modifier{name:"atk"} run data modify storage temp: amount.name set value "攻撃力"
    execute if data storage temp: modifier{name:"def"} run data modify storage temp: amount.name set value "防御力"
    execute if data storage temp: modifier{name:"speed"} run data modify storage temp: amount.name set value "スピード"
    execute if data storage temp: modifier{name:"hpRegenRate"} run data modify storage temp: amount.name set value "体力回復力"
    execute if data storage temp: modifier{name:"mpRegenRate"} run data modify storage temp: amount.name set value "魔力回復力"

## 接尾
    execute if data storage temp: modifier{operation:1} run data modify storage temp: amount.suffix set value "%"
    execute if data storage temp: modifier{operation:2} run data modify storage temp: amount.suffix set value "%"

## 説明を生成
    item modify block ~ ~ ~ container.0 asset.lib:item/create/lore/modifier

## データを削除
    data remove storage asset:item modifiers[0]

## ループ
    function asset.lib:item/create/lore/modifiers/loop
