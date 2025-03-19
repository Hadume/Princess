#> asset:mob/53001/summon/init
#
# @within function asset:mob/summon/init

## 名前 : TextComponent
	data modify storage asset:mob Name set value '{"text": "フランメゾンビ"}'

## タイプ : Type
	data modify storage asset:mob Type set value "Enemy"

## 装備? : {{id: id(minecraft:item), Count: boolean @ 1..64, tag: Compound} || int(asset:item)} @ ..6
	### 防具
		data modify storage asset:mob Armor.Head set value {ID:54016}
		#data modify storage asset:mob Armor.Chest set value {}
		#data modify storage asset:mob Armor.Legs set value {}
		#data modify storage asset:mob Armor.Feet set value {}

	### 武器
	#data modify storage asset:mob Weapon.Mainhand set value {}
	#data modify storage asset:mob Weapon.Offhand set value {}


## ステータス : int
	data modify storage asset:mob Status.Lvl set value 1
	data modify storage asset:mob Status.Exp set value 5
	data modify storage asset:mob Status.Money set value 10
	data modify storage asset:mob Status.HP set value 100
	data modify storage asset:mob Status.MP set value 0
	data modify storage asset:mob Status.ATK set value 6
	data modify storage asset:mob Status.DEF set value 1
	data modify storage asset:mob Status.Speed set value 230

## NBT? : Compound
#data modify storage asset:mob NBT set value {}
