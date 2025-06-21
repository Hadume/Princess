#> player:effects/tick/main/hp
# 体力を回復
# @within function player:effects/tick/loop

## 値を取得
    data modify storage lib: RcvrHP.amount set from storage temp: Effect.amount

##
    function #lib:status/hp/recover
