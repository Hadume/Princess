#> asset:magic/52502/cast/
# 魔法を発動
# @within function asset:magic/cast

#> scoreHolder
# @within function asset:magic/52502/cast/entity
# @private
    #declare score_holder #storedDamage

##
    data modify storage asset:magic damage set value 1b
    function #asset.lib:magic/action/range/

## HP回復
    data modify storage lib:status hp.recovery.input set from storage asset:magic damage
    function #lib:status/hp/recovery

## 音を鳴らす
    execute at @s run playsound entity.squid.squirt master @a ~ ~ ~ 1 2

## 一時使用scoreHolder
    scoreboard players reset #storedDamage
