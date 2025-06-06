#> asset:item/54901/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
	data modify storage asset:item id set value "lodestone"

## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text": "資格石"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 10

## 種類 : Category
	data modify storage asset:item Category set value "Misc"

## 装備効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
#data modify storage asset:item Stats append value {}

## ItemModel? : String
#data modify storage asset:item ItemModel set value ""

## シリーズ? : String
#data modify storage asset:item Series set value ""

## どこに装備できるか? : String
#data modify storage asset:item CanEquip set value ""

## 追加効果? : [{Name: Food, Amount: int, Duration: int}] @ N
#data modify storage asset:item Effects append value {}

## NBT? : NBTCompound
	data modify storage asset:item NBT set value {"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{QualificationStone:1b}}
