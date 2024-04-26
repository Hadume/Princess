#> mob:hurt/ehp/3
# 
# @within function mob:hurt/ehp/2

## 
  execute if entity @s[tag=DmgFlag.3.0] if entity @a[tag=This,advancements={mob:entity_hurt_player={3-0=true}}] run function mob:hurt/ehp/4
  execute if entity @s[tag=DmgFlag.3.1] if entity @a[tag=This,advancements={mob:entity_hurt_player={3-1=true}}] run function mob:hurt/ehp/4
  execute if entity @s[tag=DmgFlag.3.2] if entity @a[tag=This,advancements={mob:entity_hurt_player={3-2=true}}] run function mob:hurt/ehp/4
  execute if entity @s[tag=DmgFlag.3.3] if entity @a[tag=This,advancements={mob:entity_hurt_player={3-3=true}}] run function mob:hurt/ehp/4
