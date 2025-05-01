#> asset:mob/53006/death/
#
# @within function asset:mob/death

## okicanシステムのほうの体力を反映
	scoreboard players operation $catboss ok_boss_health = @s HP

## ダンジョンクリア処理
	function asset:dungeon/59010/boss/exit
