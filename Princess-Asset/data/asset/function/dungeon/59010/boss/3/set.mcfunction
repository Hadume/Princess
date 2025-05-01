#> asset:dungeon/59010/boss/3/set
#
# @private

## 既に設置されているものを削除
	kill @e[type=marker,tag=Dungeon,scores={Dungeon=59013}]

##
	execute in dungeon positioned 144.5 0.0 -270.5 if loaded ~ ~ ~ summon marker run function #asset.lib:dungeon/set/marker {ID:59013}
