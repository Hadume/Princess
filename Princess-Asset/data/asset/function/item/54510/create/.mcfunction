#> asset:item/54510/create/
#
# @within function asset:item/create/

## アイテムid
    data modify storage asset:item id set value "apple"

## 名前
    data modify storage asset:item name set value '{"text": "ケーキ","color":"yellow"}'

## 説明
    data modify storage asset:item lore set value [\
    '{"text": "魔力が200回復する","color": "blue"}'\
    ]

## レアリティ
    data modify storage asset:item rarity set value 3

## 種類
    data modify storage asset:item category set value "food"

## 装備効果
#data modify storage asset:item modifiers set value []

## itemModel
    data modify storage asset:item itemModel set value "minecraft:cake"

## 追加効果
    data modify storage asset:item effects set value [\
    {name:"mp",amount:200,duration:1}\
    ]

## コンポーネント
    data modify storage asset:item components set value {"custom_data":{ok_buy:1}}
