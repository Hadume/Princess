#> player:effects/tick/main/mp
# 魔力を回復
# @within function player:effects/tick/loop

## 値を取得
    data modify storage lib: RcvrMP.amount set from storage temp: Effect.amount

##
    function #lib:status/mp/recover
