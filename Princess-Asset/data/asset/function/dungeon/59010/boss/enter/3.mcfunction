#> asset:dungeon/59010/boss/enter/3
#
# @within function asset:dungeon/boss/enter

## ボス部屋へ移動
	tp @s 221.5 1.0 -297.5 180.0 0.0

## ボスを召喚
	execute positioned 221.5 1.0 -312.5 run function okican:catboss/start
