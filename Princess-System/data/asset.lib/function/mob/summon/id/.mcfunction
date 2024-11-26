#> asset.lib:mob/summon/id/
# MOBのid
# @within function asset.lib:mob/summon/main

##
	execute if entity @s[type=#mob:enemy] run function asset.lib:mob/summon/id/enemy
	execute if entity @s[type=!#mob:enemy] run function asset.lib:mob/summon/id/neutral

## idを保存
	data modify storage dat: _.id set from storage temp: id

## 一時使用Storageを削除
	data remove storage temp: id
