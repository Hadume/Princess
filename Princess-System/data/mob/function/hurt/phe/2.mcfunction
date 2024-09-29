#> mob:hurt/phe/2
#
# @within function mob:hurt/phe/1

##
	execute if entity @s[tag=DmgFlag.2.0] if entity @a[tag=This,advancements={mob:player_hurt_entity={2-0=true}}] run function mob:hurt/phe/3
	execute if entity @s[tag=DmgFlag.2.1] if entity @a[tag=This,advancements={mob:player_hurt_entity={2-1=true}}] run function mob:hurt/phe/3
	execute if entity @s[tag=DmgFlag.2.2] if entity @a[tag=This,advancements={mob:player_hurt_entity={2-2=true}}] run function mob:hurt/phe/3
	execute if entity @s[tag=DmgFlag.2.3] if entity @a[tag=This,advancements={mob:player_hurt_entity={2-3=true}}] run function mob:hurt/phe/3
