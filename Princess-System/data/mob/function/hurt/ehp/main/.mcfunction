#> mob:hurt/ehp/main/
#
# @within function mob:hurt/ehp/7

## 攻撃力を取得
    execute if entity @s[tag=enemy] run return run scoreboard players get @s atk
    execute if entity @s[tag=boss] at @s run return run function mob:hurt/ehp/main/boss
