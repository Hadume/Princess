#> asset:dungeon/59010/boss/enter/1
#
# @within function asset:dungeon/boss/enter

## ボス部屋へ移動
	tp @s 55.5 1.0 -297.5 180.0 0.0

## ボスを召喚
	execute positioned 55.5 1.0 -312.5 run function okican:catboss/start
