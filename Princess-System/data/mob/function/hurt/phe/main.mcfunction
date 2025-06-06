#> mob:hurt/phe/main
#
# @within function mob:hurt/phe/7

## 回復
    execute if entity @s[type=!#mob:undead] run effect give @s instant_health 1 200 true
    execute if entity @s[type=#mob:undead] run effect give @s instant_damage 1 200 true
