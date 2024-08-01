#> asset:item/-54001/create/main
#
# @within function asset:item/-54001/create/

## アイテムid; String
	data modify storage asset:item id set value "cod"
## 名前; JsonText
	data modify storage asset:item Name set value '{"text":"サカナ―！"}'
## 説明; List.JsonText; (任意)
	data modify storage asset:item Lore set value ['{"text":"チンアナゴー！"}']
## 種類; String; ["Wand","Armor","Crystal","Meal","Misc"]
	data modify storage asset:item Category set value "Misc"
## レアリティ
	data modify storage asset:item Rarity set value 1
## 効果; List.Compound
###   Name; String; [HPMax, MPMax, ATK, DEF, Speed]
###   Operation; Int ; [0: 元の値にAmountを加算, 1: 元の値にAmount＊100％を加算, 2: 元の値にAmount＊100％を乗算]
###   Amount; Int
	#data modify storage asset:item Stats set value [{Name:"",Operation:0,Amount:0}]
## NBT; Compound; (任意)
	#data modify storage asset:item NBT set value {}
## アイテムを生成
	function asset.lib:item/create/check.condition
