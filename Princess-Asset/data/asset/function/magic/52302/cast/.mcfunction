#> asset:magic/52302/cast/
# 魔法を発動
# @within function asset:magic/cast

## データをコピー
    execute store result storage temp:asset activating byte 1 if data storage dat: _.magic[{ID:52302}]

## 発動を解除
    execute if data storage temp:asset {activating:1b} run data remove storage dat: _.magic[{ID:52302}]
    execute if data storage temp:asset {activating:1b} at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 2

##
    execute unless data storage temp:asset activating run function asset:magic/52302/cast/main

## 一時使用storageを削除
    data remove storage temp:asset activating
