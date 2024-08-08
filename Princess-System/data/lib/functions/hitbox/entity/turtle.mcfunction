#> lib:hitbox/entity/turtle
#
# @within function lib:hitbox/main

##
	execute if entity @s[predicate=lib:hitbox/is_baby] run data modify storage lib: HitBox set value [0.36f,0.12f]
	execute if entity @s[predicate=!lib:hitbox/is_baby] run data modify storage lib: HitBox set value [1.2f,0.4f]
