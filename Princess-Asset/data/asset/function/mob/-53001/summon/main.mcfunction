#> asset:mob/-53001/summon/main
#
# @within function asset:mob/-53001/summon/

## 元になるEntityを召喚 : id(minecraft:entity)
	summon zombie ~ ~ ~ {Tags:["MOB.Init"]}

## 名前 : TextComponent
	data modify storage asset:mob Name set value '{"text":"ゾンビ"}'

## タイプ : Type
	data modify storage asset:mob Type set value "Enemy"

## 装備? : {{id: id(minecraft:item), Count: boolean @ 1..64, tag: Compound} || int(asset:item)} @ ..6
	### 防具
	#data modify storage asset:mob Armor.Head set value {id:"iron_helmet",Count:1b}
	#data modify storage asset:mob Armor.Chest set value {ID:-3}
	#data modify storage asset:mob Armor.Legs set value {ID:-4}
	#data modify storage asset:mob Armor.Feet set value {ID:-5}

	### 武器
	#data modify storage asset:mob Weapon.Mainhand set value {ID:-6}
	#data modify storage asset:mob Weapon.Offhand set value {ID:-6}


## ステータス : int
	data modify storage asset:mob Status.Lvl set value 1
	data modify storage asset:mob Status.Exp set value 10
	data modify storage asset:mob Status.Money set value 10
	data modify storage asset:mob Status.HP set value 100
	data modify storage asset:mob Status.MP set value 100
	data modify storage asset:mob Status.ATK set value 1
	data modify storage asset:mob Status.DEF set value 0
	data modify storage asset:mob Status.Speed set value 0
	#data modify storage asset:mob Status.Luck set value 1

## NBT? : Compound
#data modify storage asset:mob NBT set value {}

## MOBを生成
	function asset.lib:mob/summon/check.condition
