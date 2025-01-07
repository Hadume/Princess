#> asset.lib:item/create/lore/basic.loop
#
# @within function asset.lib:item/create/main
# @private

## 説明を取得
	loot replace block 0 -64 0 container.0 loot asset.lib:item/lore/basic

## 取得したデータを移行
	data modify storage temp: Item.components."minecraft:lore" append from block 0 -64 0 Items[0].components."minecraft:custom_name"

## 元のデータを削除
	data remove storage asset:item Lore[0]

## ループ
	execute if data storage asset:item Lore[] run function asset.lib:item/create/lore/basic.loop
