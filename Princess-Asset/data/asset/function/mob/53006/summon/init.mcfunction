#> asset:mob/53006/summon/init
#
# @within function asset:mob/summon/init

## 名前 : TextComponent
	data modify storage asset:mob Name set value '{"text": "キャットミー"}'

## タイプ : Type
	data modify storage asset:mob Type set value "Boss"

## 装備? : {{id: id(minecraft:item), Count: boolean @ 1..64, tag: Compound} || int(asset:item)} @ ..6
	### 防具
	#data modify storage asset:mob Armor.Head set value {}
	#data modify storage asset:mob Armor.Chest set value {}
	#data modify storage asset:mob Armor.Legs set value {}
	#data modify storage asset:mob Armor.Feet set value {}

	### 武器
	#data modify storage asset:mob Weapon.Mainhand set value {}
	#data modify storage asset:mob Weapon.Offhand set value {}


## ステータス : int
	data modify storage asset:mob Status.Lvl set value 5
	data modify storage asset:mob Status.Exp set value 100
	data modify storage asset:mob Status.Money set value 200
	data modify storage asset:mob Status.HP set value 1000
	data modify storage asset:mob Status.MP set value 0
	data modify storage asset:mob Status.ATK set value 40
	data modify storage asset:mob Status.DEF set value 5
	data modify storage asset:mob Status.Speed set value 0

## NBT? : Compound
	data modify storage asset:mob NBT set value {CustomNameVisible:0b}
