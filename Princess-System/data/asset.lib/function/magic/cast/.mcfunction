#> asset.lib:magic/cast/
# 魔法を唱える
# @within function
#   player:offhand
#   main:advancements/shot_crossbow

## 個人ストレージを呼ぶ
	function data.player:please

## データを削除
	execute if data storage asset:magic ID run data remove storage asset:magic ID

## IDをコピー
	execute if data storage main: {ShotCrossbow:1b} unless predicate player:sneaking run function asset.lib:magic/cast/condition/click
	execute if data storage main: {ShotCrossbow:1b} if predicate player:sneaking run function asset.lib:magic/cast/condition/click_s
	execute if data storage main: {InventoryChanged:1b} unless predicate player:sneaking run function asset.lib:magic/cast/condition/offhand
	execute if data storage main: {InventoryChanged:1b} if predicate player:sneaking run function asset.lib:magic/cast/condition/offhand_s
