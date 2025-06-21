#> asset:dungeon/59010/exit/set
#
# @private

## 既に設置されているものを削除
    kill @e[type=marker,tag=dungeon,scores={dungeon=59017}]

##
    execute in dungeon positioned 154.5 0.0 -24.5 if loaded ~ ~ ~ summon marker run function #asset.lib:dungeon/marker/set {ID:59017}
