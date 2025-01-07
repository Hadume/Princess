#> asset.lib:item/create/main
# アイテムを生成
# @within function asset.lib:item/create/

## Storageを初期化
	data remove storage temp: Item

## Countを設定
	data modify storage temp: Item.count set value 1

## データを移行
	data modify storage temp: Item.id set from storage asset:item id
	data modify storage temp: Item.components."minecraft:custom_data".Category set from storage asset:item Category
	data modify storage temp: Item.components."minecraft:custom_data".rawText.Name set from storage asset:item Name
	execute if data storage asset:item Lore run data modify storage temp: Item.components."minecraft:custom_data".rawText.Lore set from storage asset:item Lore
	execute if data storage asset:item Stats run data modify storage temp: Item.components."minecraft:custom_data".Stats set from storage asset:item Stats
	### 魔法のデータ
		execute if data storage asset:item {Category:"Wand"} run data modify storage temp: Item.components."minecraft:custom_data".Magic set value [0,0,0,0]


## NBT
	### 設定
		data modify storage temp: Item.components."minecraft:unbreakable" set value {show_in_tooltip: false}
		data modify storage temp: Item.components."minecraft:repair_cost" set value -2147483648
		data modify storage temp: Item.components."minecraft:attribute_modifiers" set value {show_in_tooltip: false,modifiers:[]}

	### 上書き
		execute if data storage asset:item NBT run data modify storage temp: Item.components merge from storage asset:item NBT


## 名前を設定
	loot replace block 0 -64 0 container.0 loot asset.lib:item/name/basic
	data modify storage temp: Item.components."minecraft:custom_name" set from block 0 -64 0 Items[0].components."minecraft:custom_name"

## 説明を設定
	### 通常
		execute if data storage asset:item Lore run function asset.lib:item/create/lore/basic.loop

	### 効果
		execute if data storage asset:item Stats run function asset.lib:item/create/lore/stats/

	### レアリティ
		loot replace block 0 -64 0 container.0 loot asset.lib:item/lore/rarity
		data modify storage temp: Lore append from block 0 -64 0 Items[0].components."minecraft:lore"[]


## アイテムを用意
	item replace block 0 -64 0 container.0 with cod
	data modify block 0 -64 0 Items[0] set from storage temp: Item

## 一時使用Storageを削除
	data remove storage temp: Item
