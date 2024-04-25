#> mob:hurt/phe/7
# 
# @within function mob:hurt/phe/6

## 
  execute if entity @s[tag=DmgFlag.7.0] if entity @a[tag=This,advancements={mob:player_hurt_entity={7-0=true}}] run function mob:hurt/phe/main
  execute if entity @s[tag=DmgFlag.7.1] if entity @a[tag=This,advancements={mob:player_hurt_entity={7-1=true}}] run function mob:hurt/phe/main
  execute if entity @s[tag=DmgFlag.7.2] if entity @a[tag=This,advancements={mob:player_hurt_entity={7-2=true}}] run function mob:hurt/phe/main
  execute if entity @s[tag=DmgFlag.7.3] if entity @a[tag=This,advancements={mob:player_hurt_entity={7-3=true}}] run function mob:hurt/phe/main
