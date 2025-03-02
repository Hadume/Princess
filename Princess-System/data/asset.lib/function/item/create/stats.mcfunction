#> asset.lib:item/create/stats
# 効果の記述
# @within function asset.lib:item/create/main

#> ScoreHolder
# @within
#   function asset.lib:item/create/lore/stats/*
#   loot_table asset.lib:item/lore/stats
	#declare score_holder #Amount

## 効果の共通処理
	item modify block 0 -64 0 container.0 asset.lib:item/create/stats

## 効果値を追加
	function asset.lib:item/create/lore/stats.loop

## 一時使用Storageを削除
	data remove storage temp: Stat
	data remove storage temp: Amount
