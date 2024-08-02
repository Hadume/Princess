#> asset:item/-54005/create/main
#
# @within function asset:item/-54005/create/

## アイテムid : id(minecraft:item)
	data modify storage asset:item id set value "iron_boots"
## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text":"鉄靴"}'
## 説明? : [TextComponent] @ N
	#data modify storage asset:item Lore set value []
## 種類 : Category
	data modify storage asset:item Category set value "Armor"
## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 3
## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
	data modify storage asset:item Stats set value [{Name:"Speed",Operation:1,Amount:100}]
## NBT? : Compound
	#data modify storage asset:item NBT set value {}
## アイテムを生成
	function asset.lib:item/create/check.condition
