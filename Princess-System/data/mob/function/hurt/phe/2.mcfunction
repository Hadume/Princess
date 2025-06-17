#> mob:hurt/phe/2
#
# @within function mob:hurt/phe/1

##
    execute if entity @s[tag=dmgFlag20] if entity @a[tag=this,advancements={mob:player_hurt_entity={2-0=true}}] run function mob:hurt/phe/3
    execute if entity @s[tag=dmgFlag21] if entity @a[tag=this,advancements={mob:player_hurt_entity={2-1=true}}] run function mob:hurt/phe/3
    execute if entity @s[tag=dmgFlag22] if entity @a[tag=this,advancements={mob:player_hurt_entity={2-2=true}}] run function mob:hurt/phe/3
    execute if entity @s[tag=dmgFlag23] if entity @a[tag=this,advancements={mob:player_hurt_entity={2-3=true}}] run function mob:hurt/phe/3
