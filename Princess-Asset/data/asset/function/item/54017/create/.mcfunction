#> asset:item/54017/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
	data modify storage asset:item id set value "leather_chestplate"

## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text": "きぬのローブ (上)"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 1

## 種類 : Category
	data modify storage asset:item Category set value "Armor"

## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
	data modify storage asset:item Stats append value {Name:"DEF",Amount:3}

## CMD? : String
#data modify storage asset:item CMD set value ""

## シリーズ? : String
	data modify storage asset:item Series set value "Silk"

## どこに装備できるか? : String
#data modify storage asset:item CanEquip set value ""

## NBT? : NBTCompound
	data modify storage asset:item NBT set value {"minecraft:dyed_color":{rgb:16709604,show_in_tooltip:false}}
