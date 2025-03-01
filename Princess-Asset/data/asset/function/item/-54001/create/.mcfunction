#> asset:item/-54001/create/
#
# @within function asset:item/create/

## アイテム : id(minecraft:item)
	data modify storage asset:item id set value "cod"

## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text":"サカナ―！"}'

## 説明? : [TextComponent] @ N
	data modify storage asset:item Lore set value ['{"text":"チンアナゴー！"}']

## 種類 : Category
	data modify storage asset:item Category set value "Misc"

## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 1

## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
#data modify storage asset:item Stats set value [{Name:"",Operation:0,Amount:0}]

## NBT? : NBTCompound
#data modify storage asset:item NBT set value {}
