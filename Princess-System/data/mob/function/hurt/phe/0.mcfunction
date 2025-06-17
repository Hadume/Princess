#> mob:hurt/phe/0
#
# @within function mob:hurt/phe/

##
    execute if entity @s[tag=dmgFlag00] if entity @a[tag=this,advancements={mob:player_hurt_entity={0-0=true}}] run function mob:hurt/phe/1
    execute if entity @s[tag=dmgFlag01] if entity @a[tag=this,advancements={mob:player_hurt_entity={0-1=true}}] run function mob:hurt/phe/1
    execute if entity @s[tag=dmgFlag02] if entity @a[tag=this,advancements={mob:player_hurt_entity={0-2=true}}] run function mob:hurt/phe/1
    execute if entity @s[tag=dmgFlag03] if entity @a[tag=this,advancements={mob:player_hurt_entity={0-3=true}}] run function mob:hurt/phe/1
