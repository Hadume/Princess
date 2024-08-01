#> asset:magic/52402/cast/check.condition
# 魔力の確認
# @within function asset:magic/52402/cast/

## タイプを取得
	function asset:magic/52402/types
## 引数
	execute if data storage asset:magic {IsFull:1b} run function asset.lib:magic/cast/common/
##
	execute if data storage asset:magic {CanCast:1b} run function asset:magic/52402/cast/main
