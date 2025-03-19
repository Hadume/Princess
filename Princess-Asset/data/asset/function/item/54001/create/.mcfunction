#> asset:item/54001/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
    data modify storage asset:item id set value "warped_fungus_on_a_stick"

## 名前 : TextComponent
    data modify storage asset:item Name set value '{"text": "オークの杖"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## レアリティ : int @ 1..10
    data modify storage asset:item Rarity set value 1

## 種類 : Category
    data modify storage asset:item Category set value "Wand"

## 装備効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
#data modify storage asset:item Stats append value {}

## CMD? : String
    data modify storage asset:item CMD set value "staff1"

## シリーズ? : String
#data modify storage asset:item Series set value ""

## どこに装備できるか? : String
#data modify storage asset:item CanEquip set value ""

## NBT? : NBTCompound
#data modify storage asset:item NBT set value {}
