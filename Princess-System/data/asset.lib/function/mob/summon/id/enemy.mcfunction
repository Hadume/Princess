#> asset.lib:mob/summon/id/enemy
# 敵MOBのid
# @within function asset.lib:mob/summon/id/

##
	execute if entity @s[type=blaze] run data modify storage temp: id set value "blaze"
	execute if entity @s[type=cave_spider] run data modify storage temp: id set value "cave_spider"
	execute if entity @s[type=creeper] run data modify storage temp: id set value "creeper"
	execute if entity @s[type=elder_guardian] run data modify storage temp: id set value "elder_guardian"
	execute if entity @s[type=ender_dragon] run data modify storage temp: id set value "ender_dragon"
	execute if entity @s[type=enderman] run data modify storage temp: id set value "enderman"
	execute if entity @s[type=ghast] run data modify storage temp: id set value "ghast"
	execute if entity @s[type=giant] run data modify storage temp: id set value "giant"
	execute if entity @s[type=guardian] run data modify storage temp: id set value "guardian"
	execute if entity @s[type=phantom] run data modify storage temp: id set value "phantom"
	execute if entity @s[type=ravager] run data modify storage temp: id set value "ravager"
	execute if entity @s[type=shulker] run data modify storage temp: id set value "shulker"
	execute if entity @s[type=spider] run data modify storage temp: id set value "spider"
	execute if entity @s[type=vex] run data modify storage temp: id set value "vex"
	execute if entity @s[type=warden] run data modify storage temp: id set value "warden"
	execute if entity @s[type=wither] run data modify storage temp: id set value "wither"
	execute if entity @s[type=wither_skeleton] run data modify storage temp: id set value "wither_skeleton"

##
	execute if entity @s[type=#lib:hitbox/hoglins] run data modify storage temp: id set value "#hoglins"
	execute if entity @s[type=#lib:hitbox/humanoid] run data modify storage temp: id set value "#humanoid"
	execute if entity @s[type=#lib:hitbox/mites] run data modify storage temp: id set value "#mites"
	execute if entity @s[type=#lib:hitbox/skeletons] run data modify storage temp: id set value "#skeletons"
	execute if entity @s[type=#lib:hitbox/slimes] run data modify storage temp: id set value "#slimes"
