#> player:regen/mp/main
# MPを回復
# @within function player:regen/mp/tick

#> scoreHolder
# @private
    #declare score_holder #mpRgnPer

## 回復値
    scoreboard players operation #mpRgnPer temp = @s mpRgnPer
    scoreboard players operation #mpRgnPer temp *= @s mpMax
    scoreboard players operation #mpRgnPer temp /= #100 const
    execute store result storage lib: RcvrMP.amount int 1 run scoreboard players get #mpRgnPer temp

## 回復
    function #lib:status/mp/recover

## 一時使用scoreHolderをリセット
    scoreboard players reset #mpRgnPer temp
