#> asset:magic/52101/cast/check.condition
# 魔力の確認
# @within function asset:magic/52101/cast/

## タイプを取得
	function asset:magic/52101/types
## 引数
	execute if data storage asset:magic {IsFull:1b} run function asset.lib:magic/cast/common/
##
	execute if data storage asset:magic {CanCast:1b} run function asset:magic/52101/cast/main
