#> asset:item/54020/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
    data modify storage asset:item id set value "leather_helmet"

## 名前 : TextComponent
    data modify storage asset:item Name set value '{"text": "毛皮の帽子"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## レアリティ : int @ 1..10
    data modify storage asset:item Rarity set value 2

## 種類 : Category
    data modify storage asset:item Category set value "Armor"

## 装備効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
    data modify storage asset:item Stats append value {Name:"HP.Rgn.Per",Amount:2}
    data modify storage asset:item Stats append value {Name:"HP.Max",Amount:20}

## ItemModel? : String
#data modify storage asset:item ItemModel set value ""

## シリーズ? : String
    data modify storage asset:item Series set value "Fur"

## どこに装備できるか? : String
#data modify storage asset:item CanEquip set value ""

## NBT? : NBTCompound
#data modify storage asset:item NBT set value {}
