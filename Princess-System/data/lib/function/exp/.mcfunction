#> lib:exp/
# 経験値の計算とか
# @within tag/function lib:exp

## プレイヤーじゃなかったら、
    execute unless entity @s[type=player] run return run function lib:_common {function:"lib:exp ", argument:"as player"}

## expが0以下だったら
    execute if entity @s[scores={exp=..0}] run function lib:exp/levelup/

## 表示
    function #api:display/exp
