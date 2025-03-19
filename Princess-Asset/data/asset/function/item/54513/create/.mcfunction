#> asset:item/54513/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
	data modify storage asset:item id set value ""

## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text": ""}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 4

## 種類 : Category
	data modify storage asset:item Category set value "Food"

## 装備効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
#data modify storage asset:item Stats append value {}

## CMD? : String
#data modify storage asset:item CMD set value ""

## シリーズ? : String
#data modify storage asset:item Series set value ""

## どこに装備できるか? : String
#data modify storage asset:item CanEquip set value ""

## 追加効果? : [{Name: Food, Amount: int, Duration: int}] @ N
	data modify storage asset:item Effects append value {Name:"Mgc.Amount",Amount:20,Duration:1200}

## NBT? : NBTCompound
#data modify storage asset:item NBT set value {}
