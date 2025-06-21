#> asset:magic/52402/cast/
# 魔法を発動
# @within function asset:magic/cast

## 範囲内のMobを特定
    function #asset.lib:magic/action/range/

##
    data modify storage lib:status hp.recovery.input set from storage asset:magic amount
    execute as @e[tag=libInRange] run function #lib:status/hp/recovery

## 音
    playsound entity.player.levelup master @a ~ ~ ~ 1 2
