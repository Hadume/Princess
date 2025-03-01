#> asset:magic/icon
#
# @within tag/function asset:magic/icon

##
	$function asset:magic/$(ID)/icon/

## typeを取得
	$function asset:magic/$(ID)/types

## アイテムを生成
	execute if function #asset.lib:magic/type run function asset.lib:magic/icon/
