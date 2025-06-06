#> lib:hitbox/entity/pufferfish
#
# @within function lib:hitbox/main

## ふぐの大きさを取得
    data modify storage temp: PuffState set from entity @s PuffState

##
    execute if data storage temp: {PuffState:0} run data modify storage lib: HitBox set value [0.35f,0.35f]
    execute if data storage temp: {PuffState:1} run data modify storage lib: HitBox set value [0.5f,0.5f]
    execute if data storage temp: {PuffState:2} run data modify storage lib: HitBox set value [0.7f,0.7f]

## 一時使用Storageを削除
    data remove storage temp: PuffState
