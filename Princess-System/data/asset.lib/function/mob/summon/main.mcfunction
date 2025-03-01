#> asset.lib:mob/summon/main
#
# @within function asset.lib:mob/summon/

## 個人ストレージを呼ぶ
	function #api:e_dat/please

## 名前
	data modify storage dat: _.rawName set from storage asset:mob Name

## タイプ
	execute if data storage asset:mob {Type:"Enemy"} run tag @s add Enemy

## 装備
	### Assetから
		execute if data storage asset:mob Armor.Head.ID run function asset.lib:mob/summon/equipments {Parts:"Head"}
		execute if data storage asset:mob Armor.Chest.ID run function asset.lib:mob/summon/equipments {Parts:"Chest"}
		execute if data storage asset:mob Armor.Legs.ID run function asset.lib:mob/summon/equipments {Parts:"Legs"}
		execute if data storage asset:mob Armor.Feet.ID run function asset.lib:mob/summon/equipments {Parts:"Feet"}
		execute if data storage asset:mob Weapon.Mainhand.ID run function asset.lib:mob/summon/equipments {Parts:"Mainhand"}
		execute if data storage asset:mob Weapon.Offhand.ID run function asset.lib:mob/summon/equipments {Parts:"Offhand"}

	### データを用意
		data modify storage temp: ArmorItems set value [{},{},{},{}]
		data modify storage temp: HandItems set value [{},{}]

	### データを移行
		execute if data storage asset:mob Armor.Head run data modify storage temp: ArmorItems[-1] set from storage asset:mob Armor.Head
		execute if data storage asset:mob Armor.Chest run data modify storage temp: ArmorItems[-2] set from storage asset:mob Armor.Chest
		execute if data storage asset:mob Armor.Legs run data modify storage temp: ArmorItems[-3] set from storage asset:mob Armor.Legs
		execute if data storage asset:mob Armor.Feet run data modify storage temp: ArmorItems[-4] set from storage asset:mob Armor.Feet
		execute if data storage asset:mob Weapon.Mainhand run data modify storage temp: HandItems[-2] set from storage asset:mob Weapon.Mainhand
		execute if data storage asset:mob Weapon.Offhand run data modify storage temp: HandItems[-1] set from storage asset:mob Weapon.Offhand

	### データを反映
		data modify entity @s ArmorItems set from storage temp: ArmorItems
		data modify entity @s HandItems set from storage temp: HandItems

	### 保存
		data modify storage dat: _.Armor set from storage temp: ArmorItems
		data modify storage dat: _.Weapon set from storage temp: HandItems


## ステータス
	### 移行
		execute store result score @s Lvl run data get storage asset:mob Status.Lvl
		execute store result score @s Exp run data get storage asset:mob Status.Exp
		execute store result score @s Money run data get storage asset:mob Status.Money
		execute store result score @s HP.Max.Base run data get storage asset:mob Status.HP
		execute store result score @s MP.Max.Base run data get storage asset:mob Status.MP
		execute store result score @s ATK.Base run data get storage asset:mob Status.ATK
		execute store result score @s DEF.Base run data get storage asset:mob Status.DEF
		execute store result score @s Speed.Base run data get storage asset:mob Status.Speed

	### 装備の数値を反映
		data modify storage lib: Stats set value ["Physic","Magic"]
		function #lib:stats


## NBT反映
	data modify entity @s {} merge value {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],DeathLootTable:"asset.lib:entities/empty",CanPickUpLoot:0b,PersistenceRequired:1b,LeftHanded:0b,CustomNameVisible:1b,Attributes:[{Name:"generic.attack_damage",Base:0.000001d}]}

## ダメージ識別用tag
	function asset.lib:mob/summon/damage.flags

## HitBoxを保存
	function asset.lib:mob/summon/id/

## 初期化Tagを外す
	tag @s remove MOB.Init

## 一時使用Storageを削除
	data remove storage temp: ArmorItems
	data remove storage temp: HandItems
