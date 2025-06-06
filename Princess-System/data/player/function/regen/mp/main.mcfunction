#> player:regen/mp/main
# MPを回復
# @within function player:regen/mp/tick

#> ScoreHolder
# @private
    #declare score_holder #MP.RgnPer

## 回復値
    scoreboard players operation #MP.RgnPer Temp = @s MP.Rgn.Per
    scoreboard players operation #MP.RgnPer Temp *= @s MP.Max
    scoreboard players operation #MP.RgnPer Temp /= #100 Const
    execute store result storage lib: RcvrMP.Amount int 1 run scoreboard players get #MP.RgnPer Temp

## 回復
    function #lib:status/mp/recover

## 一時使用ScoreHolderをリセット
    scoreboard players reset #MP.RgnPer Temp
