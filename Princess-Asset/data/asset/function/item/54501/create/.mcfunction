#> asset:item/54501/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
    data modify storage asset:item id set value "apple"

## 名前 : TextComponent
    data modify storage asset:item Name set value '{"text": "アイスクリーム","color":"yellow"}'

## 説明? : [TextComponent] @ N
    data modify storage asset:item Lore set value [{"text": "体力が20回復する","color": "blue"}]

## レアリティ : int @ 1..10
    data modify storage asset:item Rarity set value 1

## 種類 : Category
    data modify storage asset:item Category set value "Food"

## 装備効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
#data modify storage asset:item Stats append value {}

## ItemModel? : String
    data modify storage asset:item ItemModel set value "food/icecream"

## シリーズ? : String
#data modify storage asset:item Series set value ""

## どこに装備できるか? : String
#data modify storage asset:item CanEquip set value ""

## 追加効果? : [{Name: Stats, Amount: int}] @ N
    data modify storage asset:item Effects append value {Name:"HP",Amount:20,Duration:1}

## NBT? : NBTCompound
    data modify storage asset:item NBT set value {"minecraft:custom_data":{ok_buy:1}}
