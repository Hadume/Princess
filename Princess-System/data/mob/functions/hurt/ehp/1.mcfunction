#> mob:hurt/ehp/1
# 
# @within function mob:hurt/ehp/

## 
  execute if entity @s[tag=DmgFlag.1.0] if entity @a[tag=This,advancements={mob:entity_hurt_player={1-0=true}}] run function mob:hurt/ehp/2
  execute if entity @s[tag=DmgFlag.1.1] if entity @a[tag=This,advancements={mob:entity_hurt_player={1-1=true}}] run function mob:hurt/ehp/2
  execute if entity @s[tag=DmgFlag.1.2] if entity @a[tag=This,advancements={mob:entity_hurt_player={1-2=true}}] run function mob:hurt/ehp/2
  execute if entity @s[tag=DmgFlag.1.3] if entity @a[tag=This,advancements={mob:entity_hurt_player={1-3=true}}] run function mob:hurt/ehp/2
