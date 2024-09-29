#> mob:hurt/ehp/7
#
# @within function mob:hurt/ehp/6

##
	#execute if entity @s[tag=DmgFlag.7.0] if entity @a[tag=This,advancements={mob:entity_hurt_player={7-0=true}}] run scoreboard players operation #Lib.ATK Lib = @s ATK
	#execute if entity @s[tag=DmgFlag.7.1] if entity @a[tag=This,advancements={mob:entity_hurt_player={7-1=true}}] run scoreboard players operation #Lib.ATK Lib = @s ATK
	#execute if entity @s[tag=DmgFlag.7.2] if entity @a[tag=This,advancements={mob:entity_hurt_player={7-2=true}}] run scoreboard players operation #Lib.ATK Lib = @s ATK
	#execute if entity @s[tag=DmgFlag.7.3] if entity @a[tag=This,advancements={mob:entity_hurt_player={7-3=true}}] run scoreboard players operation #Lib.ATK Lib = @s ATK
