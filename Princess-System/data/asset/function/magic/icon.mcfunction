#> asset:magic/icon
#
# @within tag/function asset:magic/icon

##
	$function asset:magic/$(ID)/icon/

## アイテムを生成
	function #asset.lib:magic/type
	execute if data storage asset:magic {IsFull:1b} run function asset.lib:magic/icon/
