#> lib:hitbox/entity/turtle
# 
# @within function lib:hitbox/main

## 
  execute if entity @s[predicate=lib:hitbox/is_baby] run data modify storage lib: HitBox set value [0.18f,0.06f]
  execute if entity @s[predicate=!lib:hitbox/is_baby] run data modify storage lib: HitBox set value [0.6f,0.2f]
