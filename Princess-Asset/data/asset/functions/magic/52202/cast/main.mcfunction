#> asset:magic/52202/cast/main
#
# @within function asset:magic/52202/cast/check.condition

## 共通処理
	function asset.lib:magic/cast/common/
##
	data modify storage asset:magic Damage set value 1b
	function asset.lib:magic/action/range/
## 音を鳴らす
	execute at @s run playsound entity.generic.splash master @a ~ ~ ~ 0.5 1
	execute at @s run playsound block.bubble_column.upwards_ambient master @a ~ ~ ~ 0.5 2
## 一時使用Storageを削除
	data remove storage asset:temp Magic
