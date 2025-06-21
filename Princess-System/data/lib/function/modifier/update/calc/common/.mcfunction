#> lib:stats/calc/common/
#
# @within function lib:stats/update/calc/*

#> scoreHolder
# @within function lib:stats/update/calc/common/**
    #declare score_holder #amountStored
    #declare score_holder #amountStored1
    #declare score_holder #amountStored2

## 装備ごとに数値を取得
    function lib:stats/update/calc/common/get.amount.loop

## 元の値に*100%を加算
    execute if score #amountStored1 temp matches ..2147483647 run function lib:stats/update/calc/common/operation/1

## 元の値に*100%を乗算
    execute if score #amountStored2 temp matches ..2147483647 run function lib:stats/update/calc/common/operation/2

## 一時使用scoreHolderをリセット
    scoreboard players reset #amountStored temp
    scoreboard players reset #amountStored1 temp
    scoreboard players reset #amountStored2 temp

## 一時使用storageを削除
    data remove storage temp: CalcStats
    data remove storage temp: Stat
