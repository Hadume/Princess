#> mob:hurt/ehp/1
#
# @within function mob:hurt/ehp/0

##
    execute if entity @s[tag=dmgFlag10] if entity @a[tag=this,advancements={mob:entity_hurt_player={1-0=true}}] run return run function mob:hurt/ehp/2
    execute if entity @s[tag=dmgFlag11] if entity @a[tag=this,advancements={mob:entity_hurt_player={1-1=true}}] run return run function mob:hurt/ehp/2
    execute if entity @s[tag=dmgFlag12] if entity @a[tag=this,advancements={mob:entity_hurt_player={1-2=true}}] run return run function mob:hurt/ehp/2
    execute if entity @s[tag=dmgFlag13] if entity @a[tag=this,advancements={mob:entity_hurt_player={1-3=true}}] run return run function mob:hurt/ehp/2
