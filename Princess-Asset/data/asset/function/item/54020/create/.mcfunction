#> asset:item/54020/create/
#
# @within function asset:item/create/

## アイテムid
    data modify storage asset:item id set value "leather_helmet"

## 名前
    data modify storage asset:item name set value '{"text": "毛皮の帽子"}'

## 説明
#data modify storage asset:item lore set value []

## レアリティ
    data modify storage asset:item rarity set value 2

## 種類
    data modify storage asset:item category set value "armor"

## 装備効果
    data modify storage asset:item modifiers set value [\
    {name:"hpRegenRate",amount:2},\
    {name:"hpMax",amount:20}\
    ]

## itemModel
#data modify storage asset:item itemModel set value ""

## コンポーネント
#data modify storage asset:item components set value {}
