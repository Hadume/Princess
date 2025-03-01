#> asset:item/create/
# アイテム生成
# @within tag/function asset:item/create

##
	$execute as 0-0-1-0-0 run function asset:item/$(ID)/create/

## アイテムを生成
	function #asset.lib:item/create
