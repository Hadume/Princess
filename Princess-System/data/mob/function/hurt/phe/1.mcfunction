#> mob:hurt/phe/1
#
# @within function mob:hurt/phe/0

##
    execute if entity @s[tag=dmgFlag10] if entity @a[tag=this,advancements={mob:player_hurt_entity={1-0=true}}] run function mob:hurt/phe/2
    execute if entity @s[tag=dmgFlag11] if entity @a[tag=this,advancements={mob:player_hurt_entity={1-1=true}}] run function mob:hurt/phe/2
    execute if entity @s[tag=dmgFlag12] if entity @a[tag=this,advancements={mob:player_hurt_entity={1-2=true}}] run function mob:hurt/phe/2
    execute if entity @s[tag=dmgFlag13] if entity @a[tag=this,advancements={mob:player_hurt_entity={1-3=true}}] run function mob:hurt/phe/2
