#> asset:mob/53005/summon/
#
# @within function asset:mob/summon/

## 元になるEntityを召喚 : id(minecraft:entity)
    execute summon zombie at @s run function asset:mob/summon/init with storage asset:mob
