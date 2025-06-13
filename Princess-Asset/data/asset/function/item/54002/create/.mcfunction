#> asset:item/54002/create/
#
# @within function asset:item/create/

## アイテムid
    data modify storage asset:item id set value "warped_fungus_on_a_stick"

## 名前
    data modify storage asset:item name set value '{"text": "ラブスタッフ"}'

## 説明
#data modify storage asset:item lore set value []

## レアリティ
    data modify storage asset:item rarity set value 2

## 種類
    data modify storage asset:item category set value "wand"

## 装備効果
    data modify storage asset:item modifiers set value [\
    {name:"mpMax",amount:3}\
    ]

## itemModel
    data modify storage asset:item itemModel set value "wand/magicstaff2"

## コンポーネント
#data modify storage asset:item components set value {}
