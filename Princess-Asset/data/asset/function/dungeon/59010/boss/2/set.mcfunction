#> asset:dungeon/59010/boss/2/set
#
# @private

## 既に設置されているものを削除
    kill @e[type=marker,tag=Dungeon,scores={Dungeon=59012}]

##
    execute in dungeon positioned 138.5 0.0 -270.5 if loaded ~ ~ ~ summon marker run function #asset.lib:dungeon/marker/set {ID:59012}
