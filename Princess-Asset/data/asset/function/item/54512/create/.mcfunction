#> asset:item/54512/create/
#
# @within function asset:item/create/

## アイテムid : id(minecraft:item)
    data modify storage asset:item id set value "apple"

## 名前 : TextComponent
    data modify storage asset:item Name set value '{"text": "わたあめ","color":"yellow"}'

## 説明? : [TextComponent] @ N
    data modify storage asset:item Lore set value [{"text": "魔法攻撃力が60秒間10up!","color": "blue"}]

## レアリティ : int @ 1..10
    data modify storage asset:item Rarity set value 3

## 種類 : Category
    data modify storage asset:item Category set value "Food"

## 装備効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
#data modify storage asset:item Stats append value {}

## ItemModel? : String
    data modify storage asset:item ItemModel set value "food/cotton_candy"

## シリーズ? : String
#data modify storage asset:item Series set value ""

## どこに装備できるか? : String
#data modify storage asset:item CanEquip set value ""

## 追加効果? : [{Name: Food, Amount: int, Duration: int}] @ N
    data modify storage asset:item Effects append value {Name:"Mgc.Amount",Amount:10,Duration:1200}

## NBT? : NBTCompound
    data modify storage asset:item NBT set value {"minecraft:custom_data":{ok_buy:1}}
