#> asset:item/-54007/create/
#
# @within function asset:item/create/main

## アイテムid : id(minecraft:item)
	data modify storage asset:item id set value "crossbow"

## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text":"テストワンド"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## 種類 : Category
	data modify storage asset:item Category set value "Wand"

## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 10

## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
	data modify storage asset:item Stats set value [{Name:"MPMax",Operation:0,Amount:99999999}]

## NBT? : NBTCompound
	data modify storage asset:item NBT set value {ChargedProjectiles:[{id:"air",Count:1b}],Charged:1b}

## アイテムを生成
	function #asset.lib:item/create
