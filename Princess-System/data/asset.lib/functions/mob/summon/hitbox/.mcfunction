#> asset.lib:mob/summon/hitbox/
# 
# @within function asset.lib:mob/summon/main

## 
  execute if entity @s[type=#main:enemy] run function asset.lib:mob/summon/hitbox/enemy/
  execute if entity @s[type=!#main:enemy] run function asset.lib:mob/summon/hitbox/neutral
  execute if entity @s[type=#asset.lib:mob/humanoid] run data modify storage asset:temp HitBox set value [0.3f,0.975f]
## 子供だったら
  execute if entity @s[type=!turtle,predicate=asset.lib:mob/hitbox/is_baby] store result storage asset:temp HitBox[0] float 0.5 run data get storage asset:temp HitBox[0]
  execute if entity @s[type=!turtle,predicate=asset.lib:mob/hitbox/is_baby] store result storage asset:temp HitBox[1] float 0.5 run data get storage asset:temp HitBox[1]
## HitBoxを保存
  data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].HitBox set from storage asset:temp HitBox
## MOBが登録されていなかったら
  execute unless data storage asset:temp HitBox run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "HitBoxが登録されていないMOBがいます。"}]
## 一時使用Storageを削除
  data remove storage asset:temp HitBox
