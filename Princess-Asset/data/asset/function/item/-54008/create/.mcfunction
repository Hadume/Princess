#> asset:item/-54008/create/
#
# @within function asset:item/create/main

## アイテムid : id(minecraft:item)
	data modify storage asset:item id set value "emerald"

## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text":"テストクリスタル"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## 種類 : Category
	data modify storage asset:item Category set value "Crystal"

## どこに装備できるか? : String
	data modify storage asset:item CanEquip set value "Armor"

## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 1

## シリーズ? : String
	data modify storage asset:item Series set value "Test"

## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
	data modify storage asset:item Stats set value [{Name:"HPMax",Operation:0,Amount:10}]

## NBT? : NBTCompound
#data modify storage asset:item NBT set value {}

## アイテムを生成
	function asset.lib:item/create/check.condition
