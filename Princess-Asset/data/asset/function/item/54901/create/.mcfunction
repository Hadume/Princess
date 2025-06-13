#> asset:item/54901/create/
#
# @within function asset:item/create/

## アイテムid
    data modify storage asset:item id set value "lodestone"

## 名前
    data modify storage asset:item name set value '{"text": "資格石"}'

## 説明
#data modify storage asset:item lore set value []

## レアリティ
    data modify storage asset:item rarity set value 10

## 種類
    data modify storage asset:item category set value "misc"

## 装備効果
#data modify storage asset:item modifiers set value []

## itemModel
#data modify storage asset:item itemModel set value ""

## 追加効果
#data modify storage asset:item effects set value []

## コンポーネント
    data modify storage asset:item components set value {"enchantment_glint_override":true,"custom_data":{qualificationStone:1b}}
