#> mob:hurt/phe/1
#
# @within function mob:hurt/phe/

##
	execute if entity @s[tag=DmgFlag.1.0] if entity @a[tag=This,advancements={mob:player_hurt_entity={1-0=true}}] run function mob:hurt/phe/2
	execute if entity @s[tag=DmgFlag.1.1] if entity @a[tag=This,advancements={mob:player_hurt_entity={1-1=true}}] run function mob:hurt/phe/2
	execute if entity @s[tag=DmgFlag.1.2] if entity @a[tag=This,advancements={mob:player_hurt_entity={1-2=true}}] run function mob:hurt/phe/2
	execute if entity @s[tag=DmgFlag.1.3] if entity @a[tag=This,advancements={mob:player_hurt_entity={1-3=true}}] run function mob:hurt/phe/2
