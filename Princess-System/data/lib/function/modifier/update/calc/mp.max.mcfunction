#> lib:stats/update/calc/mp.max
# 最大魔力の例外処理
# @within function lib:stats/update/calc/loop

## 魔力が0を下回らないように
    execute if score @s mpMax matches ..0 run scoreboard players set @s mpMax 1

## 更新
    function #lib:status/mp/update
