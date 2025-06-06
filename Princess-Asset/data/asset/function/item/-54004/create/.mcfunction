#> asset:item/-54004/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
    data modify storage asset:item id set value "iron_leggings"

## 名前 : TextComponent
    data modify storage asset:item Name set value '{"text":"鉄袴"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## 種類 : Category
    data modify storage asset:item Category set value "Armor"

## レアリティ : int @ 1..10
    data modify storage asset:item Rarity set value 3

## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
    data modify storage asset:item Stats set value [{Name:"HP.Max",Operation:1,Amount:100},{Name:"MP.Max",Operation:1,Amount:100}]

## NBT? : NBTCompound
#data modify storage asset:item NBT set value {}
