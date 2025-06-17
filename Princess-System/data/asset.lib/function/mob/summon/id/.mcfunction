#> asset.lib:mob/summon/id/
# MOBのid
# @within function asset.lib:mob/summon/main

##
    execute if entity @s[type=#mob:enemy] run function asset.lib:mob/summon/id/enemy
    execute if entity @s[type=!#mob:enemy] run function asset.lib:mob/summon/id/neutral

## idを保存
    data modify storage dat: _.entityType set from storage temp: entityType

## 一時使用storageを削除
    data remove storage temp: entityType
