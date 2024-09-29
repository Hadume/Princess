#> lib:hitbox/entity/sniffer
# スニファーのサイズ
# @within function lib:hitbox/main

##
	execute if entity @s[predicate=lib:hitbox/is_baby] run data modify storage lib: HitBox set value [0.855f,0.7875f]
	execute if entity @s[predicate=!lib:hitbox/is_baby] run data modify storage lib: HitBox set value [1.9f,1.75f]
