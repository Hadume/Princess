#> asset:magic/cast
# 魔法を使う時の共通部分
# @within function asset.lib:magic/cast/condition/_common

## タイプを取得
	$function asset:magic/$(ID)/type
## 引数
	execute if data storage asset:magic {IsFull:1b} run function asset.lib:magic/cast/common/
##
	$execute if data storage asset:magic {CanCast:1b} run function asset:magic/$(ID)/cast/
## 一時仕様Storageを削除
	data remove storage asset:magic IsFull
	data remove storage asset:magic CanCast
