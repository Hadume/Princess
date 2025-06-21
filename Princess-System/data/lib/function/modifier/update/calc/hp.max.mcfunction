#> lib:stats/update/calc/hp.max
# 最大体力の例外処理
# @within function lib:stats/calc/loop

## 体力が0を下回らないように
    execute if score @s hpMax matches ..0 run scoreboard players set @s hpMax 1

## 更新
    function #lib:status/hp/update
