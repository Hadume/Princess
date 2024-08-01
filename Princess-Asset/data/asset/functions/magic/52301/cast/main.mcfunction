#> asset:magic/52301/cast/main
#
# @within function asset:magic/52301/cast/check.condition

## 共通処理
	function asset.lib:magic/cast/common/
##
	function asset.lib:magic/action/range/
## 座標を取得
	function api:get.nbt/pos
	data modify storage asset:temp 52301.Pos set from storage api: Pos
## 引き寄せる
	execute at @s as @e[tag=Lib.InRange] run function asset:magic/52301/cast/mob
## 音を鳴らす
	execute at @s run playsound item.trident.riptide_2 master @a ~ ~ ~ 1 1
	execute at @s run playsound item.trident.riptide_3 master @a ~ ~ ~ 0.25 2
## 一時使用Storageを削除
	data remove storage asset:temp 52301
