#> lib:exp/
# 経験値の計算とか
# @input as entity
# @within tag/function lib:exp

## プレイヤーじゃなかったら、
    execute unless entity @s[type=player] run return run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"lib:exp : not player"]

## expが0以下だったら
    execute if entity @s[scores={exp=..0}] run function lib:exp/levelup/

## 表示
    function #api:display/exp
