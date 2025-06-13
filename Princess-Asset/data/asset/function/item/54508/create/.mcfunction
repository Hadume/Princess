#> asset:item/54508/create/
#
# @within function asset:item/create/

## アイテムid
    data modify storage asset:item id set value "apple"

## 名前
    data modify storage asset:item name set value '{"text": "ドーナッツ","color":"yellow"}'

## 説明
    data modify storage asset:item lore set value [\
    '{"text": "魔力が50回復する","color": "blue"}'\
    ]

## レアリティ
    data modify storage asset:item rarity set value 1

## 種類
    data modify storage asset:item category set value "food"

## 装備効果
#data modify storage asset:item modifiers set value []

## itemModel
    data modify storage asset:item itemModel set value "food/donut"

## 追加効果
    data modify storage asset:item effects set value [\
    {name:"mp",amount:50,duration:1}\
    ]

## コンポーネント
    data modify storage asset:item components set value {"custom_data":{ok_buy:1}}
