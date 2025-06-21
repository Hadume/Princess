#> asset:magic/52301/cast/mob
# MOBを引き寄せる
# @within function asset:magic/52301/cast/

## データを移行
    data modify storage lib:spread input.at set from storage temp:asset pos
    data modify storage lib:spread input.amount set value [1.5f, 0.0f]
    data modify storage lib:spread input.onGround set value 1b

##
    function #lib:spread
