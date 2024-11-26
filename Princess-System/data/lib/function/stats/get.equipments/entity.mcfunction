#> lib:stats/get.equipments/entity
# Entityの装備データを取得
# @within function lib:stats/main

## データを取得
	function #api:get.nbt/armor_items
	function #api:get.nbt/hand_items

## 各装備を変更
	data modify storage temp: Armor set from storage api: ArmorItems
	data modify storage temp: Weapon set from storage api: HandItems
