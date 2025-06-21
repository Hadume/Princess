#> lib:stats/update/calc/speed
# スピードの例外処理
# @within function lib:stats/update/calc/loop

## スピードがマイナスにならないように
    execute if score @s speed matches ..-1 run scoreboard players set @s speed 0

## 更新
    function #lib:status/speed/update
