#> asset:dungeon/59010/tick/player/main
#
# @within function asset:dungeon/59010/tick/player/

## ダンジョンの範囲外に出たら、初期地点に戻す
	execute if entity @s[scores={Dungeon=59010},predicate=!asset:dungeon/59010/] run function #asset.lib:dungeon/enter
	#execute if entity @s[scores={Dungeon=59011},predicate=!asset:dungeon/59010/boss/1] run function #asset.lib:dungeon/enter
