#> asset.lib:item/create/main
# アイテムを生成
# @within function asset.lib:item/create/

## アイテムを設定
	item replace block 0 -64 0 container.0 with cod
	data modify block 0 -64 0 Items[0].id set from storage asset:item id

## データを保存
	item modify block 0 -64 0 container.0 asset.lib:item/create/common
	### カテゴリーごと
		execute if data storage asset:item {Category:"Wand"} run item modify block 0 -64 0 container.0 asset.lib:item/create/wand
		execute if data storage asset:item {Category:"Food"} run item modify block 0 -64 0 container.0 asset.lib:item/create/food

	### その他
	#execute if data storage asset:item NBT run data modify block 0 -64 0 Items[0].components."minecraft:custom_model_data".strings set from storage asset:item CMD
		execute if data storage asset:item NBT run data modify block 0 -64 0 Items[0].components merge from storage asset:item NBT
		execute if data storage asset:item Effects run data modify block 0 -64 0 Items[0].components."minecraft:custom_data".Effects set from storage asset:item Effects


## 名前を設定
	item modify block 0 -64 0 container.0 asset.lib:item/create/name/basic

## 説明を設定
	### 通常
		execute if data storage asset:item Lore run function asset.lib:item/create/lore/basic/

	### 効果
		execute if data storage asset:item Stats run function asset.lib:item/create/stats

	### レアリティ
		item modify block 0 -64 0 container.0 asset.lib:item/create/lore/rarity
