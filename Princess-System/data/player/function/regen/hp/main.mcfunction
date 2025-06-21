#> player:regen/hp/main
# HPを回復
# @within function player:regen/hp/tick

#> scoreHolder
# @private
    #declare score_holder #hpRgnPer

## 回復値
    scoreboard players operation #hpRgnPer temp = @s hpRgnPer
    scoreboard players operation #hpRgnPer temp *= @s hpMax
    scoreboard players operation #hpRgnPer temp /= #100 const
    execute store result storage lib: RcvrHP.amount int 1 run scoreboard players get #hpRgnPer temp

## 回復
    function #lib:status/hp/recover

## 一時使用scoreHolderをリセット
    scoreboard players reset #hpRgnPer temp
