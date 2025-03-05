#> asset:item/54022/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
	data modify storage asset:item id set value "leather_leggings"

## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text": "毛皮のコート (下)"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 2

## 種類 : Category
	data modify storage asset:item Category set value "Armor"

## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
	data modify storage asset:item Stats append value {Name:"DEF",Amount:5}

## CMD? : String
#data modify storage asset:item CMD set value ""

## シリーズ? : String
	data modify storage asset:item Series set value "Fur"

## どこに装備できるか? : String
#data modify storage asset:item CanEquip set value ""

## NBT? : NBTCompound
#data modify storage asset:item NBT set value {}
