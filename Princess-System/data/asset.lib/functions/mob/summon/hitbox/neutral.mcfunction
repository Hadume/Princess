#> asset.lib:mob/summon/hitbox/neutral
# 
# @within function asset.lib:mob/summon/hitbox/

## 
  execute if entity @s[type=allay] run data modify storage asset:temp HitBox set value [0.3f,0.3f]
  execute if entity @s[type=axolotl] run data modify storage asset:temp HitBox set value [0.375f,0.21f]
  execute if entity @s[type=#asset.lib:mob/flyings] run data modify storage asset:temp HitBox set value [0.25f,0.45f]
  execute if entity @s[type=#asset.lib:mob/babies] run data modify storage asset:temp HitBox set value [0.35f,0.3f]
  execute if entity @s[type=camel] run data modify storage asset:temp HitBox set value [0.85f,1.1875f]
  execute if entity @s[type=#asset.lib:mob/cats] run data modify storage asset:temp HitBox set value [0.3f,0.35f]
  execute if entity @s[type=chicken] run data modify storage asset:temp HitBox set value [0.2f,0.35f]
  execute if entity @s[type=cod] run data modify storage asset:temp HitBox set value [0.25f,0.15f]
  execute if entity @s[type=#asset.lib:mob/cows] run data modify storage asset:temp HitBox set value [0.45f,0.7f]
  execute if entity @s[type=dolphin] run data modify storage asset:temp HitBox set value [0.45f,0.3f]
  execute if entity @s[type=#asset.lib:mob/horses] run data modify storage asset:temp HitBox set value [0.6982f,0.8f]
  execute if entity @s[type=frog] run data modify storage asset:temp HitBox set value [0.25f,0.275f]
  execute if entity @s[type=#asset.lib:mob/squids] run data modify storage asset:temp HitBox set value [0.4f,0.4f]
  execute if entity @s[type=#asset.lib:mob/mofumofus] run data modify storage asset:temp HitBox set value [0.45f,0.65f]
  execute if entity @s[type=iron_golem] run data modify storage asset:temp HitBox set value [0.7f,1.35f]
  execute if entity @s[type=#asset.lib:mob/llamas] run data modify storage asset:temp HitBox set value [0.45f,0.935f]
  execute if entity @s[type=panda] run data modify storage asset:temp HitBox set value [0.65f,0.625f]
  execute if entity @s[type=pig] run data modify storage asset:temp HitBox set value [0.45f,0.45f]
  execute if entity @s[type=polar_bear] run data modify storage asset:temp HitBox set value [0.7f,0.7f]

  execute if entity @s[type=pufferfish,nbt={PuffState:0}] run data modify storage asset:temp HitBox set value [0.175f,0.175f]
  execute if entity @s[type=pufferfish,nbt={PuffState:1}] run data modify storage asset:temp HitBox set value [0.25f,0.25f]
  execute if entity @s[type=pufferfish,nbt={PuffState:2}] run data modify storage asset:temp HitBox set value [0.35f,0.35f]

  execute if entity @s[type=rabbit] run data modify storage asset:temp HitBox set value [0.2f,0.25f]
  execute if entity @s[type=salmon] run data modify storage asset:temp HitBox set value [0.35f,0.2f]
  execute if entity @s[type=sniffer] run data modify storage asset:temp HitBox set value [0.855f,0.7875f]
  execute if entity @s[type=snow_golem] run data modify storage asset:temp HitBox set value [0.35f,0.95f]
  execute if entity @s[type=strider] run data modify storage asset:temp HitBox set value [0.45f,0.85f]
  execute if entity @s[type=tadpole] run data modify storage asset:temp HitBox set value [0.3f,0.4f]
  execute if entity @s[type=tropical_fish] run data modify storage asset:temp HitBox set value [0.25f,0.2f]

  execute if entity @s[type=turtle,predicate=asset.lib:mob/hitbox/is_baby] run data modify storage asset:temp HitBox set value [0.18f,0.06f]
  execute if entity @s[type=turtle,predicate=!asset.lib:mob/hitbox/is_baby] run data modify storage asset:temp HitBox set value [0.6f,0.2f]

  execute if entity @s[type=wolf] run data modify storage asset:temp HitBox set value [0.3f,0.425f]
