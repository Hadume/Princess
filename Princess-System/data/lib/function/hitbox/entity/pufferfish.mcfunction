#> lib:hitbox/entity/pufferfish
#
# @within function lib:hitbox/main

##
	execute if entity @s[nbt={PuffState:0}] run data modify storage lib: HitBox set value [0.35f,0.35f]
	execute if entity @s[nbt={PuffState:1}] run data modify storage lib: HitBox set value [0.5f,0.5f]
	execute if entity @s[nbt={PuffState:2}] run data modify storage lib: HitBox set value [0.7f,0.7f]
