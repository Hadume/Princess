#> asset:mob/death/
# MOBの死亡処理
# @within tag/function asset:mob/death

## IDを保存
	execute store result storage asset:mob ID int 1 run scoreboard players get @s ID.Asset

##
	function asset:mob/death/main with storage asset:mob
