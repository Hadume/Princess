#> asset.lib:item/create/main
# アイテムを生成
# @within function asset.lib:item/create/

## アイテムを設定
	execute positioned 0 -64 0 in overworld run item replace block 0 -64 0 container.0 with cod
	execute positioned 0 -64 0 in overworld run data modify block 0 -64 0 Items[0].id set from storage asset:item id

## データを保存
	execute positioned 0 -64 0 in overworld run item modify block 0 -64 0 container.0 asset.lib:item/create/common
	### カテゴリーごと
		execute if data storage asset:item {Category:"Wand"} positioned 0 -64 0 in overworld run item modify block 0 -64 0 container.0 asset.lib:item/create/wand
		execute if data storage asset:item {Category:"Food"} positioned 0 -64 0 in overworld run item modify block 0 -64 0 container.0 asset.lib:item/create/food

	### その他
	#execute if data storage asset:item NBT in overworld run data modify block 0 -64 0 Items[0].components."minecraft:custom_model_data".strings set from storage asset:item CMD
		execute if data storage asset:item NBT positioned 0 -64 0 in overworld run data modify block 0 -64 0 Items[0].components merge from storage asset:item NBT
		execute if data storage asset:item Effects positioned 0 -64 0 in overworld run data modify block 0 -64 0 Items[0].components."minecraft:custom_data".Effects set from storage asset:item Effects


## 名前を設定
	execute positioned 0 -64 0 in overworld run item modify block 0 -64 0 container.0 asset.lib:item/create/name/basic

## 説明を設定
	### 通常
		execute if data storage asset:item Lore run function asset.lib:item/create/lore/basic/

	### 効果
		execute if data storage asset:item Stats run function asset.lib:item/create/stats

	### レアリティ
		execute positioned 0 -64 0 in overworld run item modify block 0 -64 0 container.0 asset.lib:item/create/lore/rarity
