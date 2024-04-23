#> asset.lib:mob/summon/id/
# MOBのid
# @within function asset.lib:mob/summon/main

## 
  execute if entity @s[type=#main:enemy] run function asset.lib:mob/summon/id/enemy
  execute if entity @s[type=!#main:enemy] run function asset.lib:mob/summon/id/neutral
## idを保存
  data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].id set from storage asset:temp id
## 一時使用Storageを削除
  data remove storage asset:temp id
