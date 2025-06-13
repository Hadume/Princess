#> asset:item/54512/create/
#
# @within function asset:item/create/

## アイテムid
    data modify storage asset:item id set value "apple"

## 名前
    data modify storage asset:item name set value '{"text": "わたあめ","color":"yellow"}'

## 説明
    data modify storage asset:item lore set value [\
    '{"text": "魔法攻撃力が60秒間10up!","color": "blue"}'\
    ]

## レアリティ
    data modify storage asset:item rarity set value 3

## 種類
    data modify storage asset:item category set value "food"

## 装備効果
#data modify storage asset:item modifiers set value []

## itemModel
    data modify storage asset:item itemModel set value "food/cotton_candy"

## 追加効果
    data modify storage asset:item effects set value [\
    {name:"mgcAmount",amount:10,duration:1200}\
    ]

## コンポーネント
    data modify storage asset:item components set value {"custom_data":{ok_buy:1}}
