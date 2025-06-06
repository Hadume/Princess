#> mob:hurt/ehp/2
#
# @within function mob:hurt/ehp/1

##
    execute if entity @s[tag=DmgFlag.2.0] if entity @a[tag=This,advancements={mob:entity_hurt_player={2-0=true}}] run function mob:hurt/ehp/3
    execute if entity @s[tag=DmgFlag.2.1] if entity @a[tag=This,advancements={mob:entity_hurt_player={2-1=true}}] run function mob:hurt/ehp/3
    execute if entity @s[tag=DmgFlag.2.2] if entity @a[tag=This,advancements={mob:entity_hurt_player={2-2=true}}] run function mob:hurt/ehp/3
    execute if entity @s[tag=DmgFlag.2.3] if entity @a[tag=This,advancements={mob:entity_hurt_player={2-3=true}}] run function mob:hurt/ehp/3
