#> asset:item/54019/create/
#
# @within function asset:item/create/

## アイテムid
    data modify storage asset:item id set value "leather_boots"

## 名前
    data modify storage asset:item name set value '{"text": "きぬのブーツ"}'

## 説明
#data modify storage asset:item lore set value []

## レアリティ
    data modify storage asset:item rarity set value 1

## 種類
    data modify storage asset:item category set value "armor"

## 装備効果
    data modify storage asset:item modifiers set value [\
    {name:"def",amount:3}\
    ]

## itemModel
#data modify storage asset:item itemModel set value ""

## コンポーネント
    data modify storage asset:item components set value {"dyed_color":{rgb:16709604,show_in_tooltip:false}}
