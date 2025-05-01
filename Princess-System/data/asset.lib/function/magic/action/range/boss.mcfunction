#> asset.lib:magic/action/range/boss
# ボスの本体を対象に
# @within function asset.lib:magic/action/range/main

##
	tag @s add This
	execute as @e[tag=aj.global.root] if score @s ID.DmgFlag = @e[tag=This,distance=0,limit=1] ID.DmgFlag run tag @s add Lib.InRange
	tag @s remove This

## 範囲内tagを削除
	tag @s remove Lib.InRange
