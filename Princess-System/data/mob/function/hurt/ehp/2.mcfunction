#> mob:hurt/ehp/2
#
# @within function mob:hurt/ehp/1

##
    execute if entity @s[tag=dmgFlag20] if entity @a[tag=this,advancements={mob:entity_hurt_player={2-0=true}}] run return run function mob:hurt/ehp/3
    execute if entity @s[tag=dmgFlag21] if entity @a[tag=this,advancements={mob:entity_hurt_player={2-1=true}}] run return run function mob:hurt/ehp/3
    execute if entity @s[tag=dmgFlag22] if entity @a[tag=this,advancements={mob:entity_hurt_player={2-2=true}}] run return run function mob:hurt/ehp/3
    execute if entity @s[tag=dmgFlag23] if entity @a[tag=this,advancements={mob:entity_hurt_player={2-3=true}}] run return run function mob:hurt/ehp/3
