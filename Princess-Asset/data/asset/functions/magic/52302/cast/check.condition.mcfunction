#> asset:magic/52302/cast/check.condition
#
# @within function asset:magic/52302/cast/

## データをコピー
	data modify storage asset:temp Activating set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}].Activating
## 発動を解除
	execute if data storage asset:temp {Activating:1b} run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}] set value {ID:52302}
	execute if data storage asset:temp {Activating:1b} at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 2
## タイプを取得
	function asset:magic/52302/types
## 引数
	execute if data storage asset:magic {IsFull:1b} run function asset.lib:magic/cast/common/
##
	execute if data storage asset:magic {CanCast:1b} unless data storage asset:temp Activating run function asset:magic/52302/cast/main
## 一時使用Storageを削除
	data remove storage asset:temp Activating
