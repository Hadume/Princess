#> asset:dungeon/59010/enter/set
#
# @private

## 既に設置されているものを削除
	kill @e[type=marker,tag=Dungeon,scores={Dungeon=59016}]

##
	execute in 5main positioned 647.5 64.0 -82.5 if loaded ~ ~ ~ summon marker run function #asset.lib:dungeon/marker/set {ID:59016}
