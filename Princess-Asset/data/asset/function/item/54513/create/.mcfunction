#> asset:item/54513/create/
#
# @within function asset:item/create/

## アイテムid
    data modify storage asset:item id set value "apple"

## 名前
    data modify storage asset:item name set value '{"text": "ロリポップ","color":"yellow"}'

## 説明
    data modify storage asset:item lore set value [\
    '{"text": "魔法攻撃力が60秒間20up!","color": "blue"}'\
    ]

## レアリティ
    data modify storage asset:item rarity set value 4

## 種類
    data modify storage asset:item category set value "food"

## 装備効果
#data modify storage asset:item modifiers set value []

## itemModel
    data modify storage asset:item itemModel set value "food/lolipop"

## 追加効果
    data modify storage asset:item effects set value [\
    {name:"mgcAmount",amount:20,duration:1200}\
    ]

## コンポーネント
    data modify storage asset:item components set value {"custom_data":{ok_buy:1}}
