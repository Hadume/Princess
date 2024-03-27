#> asset.lib:mob/summon/hitbox/enemy/
# 
# @within function asset.lib:mob/summon/hitbox/

## 
  execute if entity @s[type=blaze] run data modify storage asset:temp HitBox set value [0.3f,0.9f]
  execute if entity @s[type=cave_spider] run data modify storage asset:temp HitBox set value [0.35f,0.25f]
  execute if entity @s[type=creeper] run data modify storage asset:temp HitBox set value [0.3f,0.85f]
  execute if entity @s[type=elder_guardian] run data modify storage asset:temp HitBox set value [0.99875f,0.99875f]
  execute if entity @s[type=ender_dragon] run data modify storage asset:temp HitBox set value [8.0f,4.0f]
  execute if entity @s[type=enderman] run data modify storage asset:temp HitBox set value [0.3f,1.45f]
  execute if entity @s[type=#asset.lib:mob/mites] run data modify storage asset:temp HitBox set value [0.2f,0.15f]
  execute if entity @s[type=ghast] run data modify storage asset:temp HitBox set value [2.0f,2.0f]
  execute if entity @s[type=giant] run data modify storage asset:temp HitBox set value [1.8f,6.0f]
  execute if entity @s[type=guardian] run data modify storage asset:temp HitBox set value [0.85f,0.85f]
  execute if entity @s[type=#asset.lib:mob/hoglins] run data modify storage asset:temp HitBox set value [0.6982f,0.7f]
  execute if entity @s[type=#asset.lib:mob/slimes] run function asset.lib:mob/summon/hitbox/enemy/slime/
  execute if entity @s[type=phantom] run function asset.lib:mob/summon/hitbox/enemy/phantom
  execute if entity @s[type=ravager] run data modify storage asset:temp HitBox set value [0.975f,1.15f]
  execute if entity @s[type=shulker] run data modify storage asset:temp HitBox set value [0.5f,0.5f]
  execute if entity @s[type=#asset.lib:mob/skeletons] run data modify storage asset:temp HitBox set value [0.3f,0.995f]
  execute if entity @s[type=spider] run data modify storage asset:temp HitBox set value [0.7f,0.45f]
  execute if entity @s[type=vex] run data modify storage asset:temp HitBox set value [0.2f,0.4f]
  execute if entity @s[type=warden] run data modify storage asset:temp HitBox set value [0.4f,1.45f]
  execute if entity @s[type=wither] run data modify storage asset:temp HitBox set value [8f,4f]
  execute if entity @s[type=wither_skeleton] run data modify storage asset:temp HitBox set value [0.35f,1.2f]
