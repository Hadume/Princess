#> asset:item/54015/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
    data modify storage asset:item id set value "warped_fungus_on_a_stick"

## 名前 : TextComponent
    data modify storage asset:item Name set value '{"text": "原初の杖"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## レアリティ : int @ 1..10
    data modify storage asset:item Rarity set value 6

## 種類 : Category
    data modify storage asset:item Category set value "Wand"

## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
    data modify storage asset:item Stats append value {Name:"ATK",Amount:30}
    data modify storage asset:item Stats append value {Name:"MP.Max",Amount:500}

## CMD? : String
    data modify storage asset:item CMD set value "staff15"

## シリーズ? : String
#data modify storage asset:item Series set value ""

## どこに装備できるか? : String
#data modify storage asset:item CanEquip set value ""

## NBT? : NBTCompound
#data modify storage asset:item NBT set value {}
