#> mob:hurt/ehp/0
#
# @within function mob:hurt/ehp/

##
    execute if entity @s[tag=dmgFlag00] if entity @a[tag=this,advancements={mob:entity_hurt_player={0-0=true}}] run return run function mob:hurt/ehp/1
    execute if entity @s[tag=dmgFlag01] if entity @a[tag=this,advancements={mob:entity_hurt_player={0-1=true}}] run return run function mob:hurt/ehp/1
    execute if entity @s[tag=dmgFlag02] if entity @a[tag=this,advancements={mob:entity_hurt_player={0-2=true}}] run return run function mob:hurt/ehp/1
    execute if entity @s[tag=dmgFlag03] if entity @a[tag=this,advancements={mob:entity_hurt_player={0-3=true}}] run return run function mob:hurt/ehp/1
