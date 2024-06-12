#> lib:hitbox/entity/pufferfish
# 
# @within function lib:hitbox/main

## 
  execute if entity @s[nbt={PuffState:0}] run data modify storage lib: HitBox set value [0.175f,0.175f]
  execute if entity @s[nbt={PuffState:1}] run data modify storage lib: HitBox set value [0.25f,0.25f]
  execute if entity @s[nbt={PuffState:2}] run data modify storage lib: HitBox set value [0.35f,0.35f]
