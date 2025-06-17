#> asset.lib:mob/summon/id/neutral
# 中立MOBのid
# @within function asset.lib:mob/summon/id/

##
    execute if entity @s[type=allay] run data modify storage temp:asset.lib mob.entityType set value "allay"
    execute if entity @s[type=axolotl] run data modify storage temp:asset.lib mob.entityType set value "axolotl"
    execute if entity @s[type=camel] run data modify storage temp:asset.lib mob.entityType set value "camel"
    execute if entity @s[type=chicken] run data modify storage temp:asset.lib mob.entityType set value "chicken"
    execute if entity @s[type=cod] run data modify storage temp:asset.lib mob.entityType set value "cod"
    execute if entity @s[type=dolphin] run data modify storage temp:asset.lib mob.entityType set value "dolphin"
    execute if entity @s[type=frog] run data modify storage temp:asset.lib mob.entityType set value "frog"
    execute if entity @s[type=iron_golem] run data modify storage temp:asset.lib mob.entityType set value "iron_golem"
    execute if entity @s[type=panda] run data modify storage temp:asset.lib mob.entityType set value "panda"
    execute if entity @s[type=pig] run data modify storage temp:asset.lib mob.entityType set value "pig"
    execute if entity @s[type=polar_bear] run data modify storage temp:asset.lib mob.entityType set value "polar_bear"
    execute if entity @s[type=pufferfish] run data modify storage temp:asset.lib mob.entityType set value "pufferfish"
    execute if entity @s[type=rabbit] run data modify storage temp:asset.lib mob.entityType set value "rabbit"
    execute if entity @s[type=salmon] run data modify storage temp:asset.lib mob.entityType set value "salmon"
    execute if entity @s[type=sheep] run data modify storage temp:asset.lib mob.entityType set value "sheep"
    execute if entity @s[type=sniffer] run data modify storage temp:asset.lib mob.entityType set value "sniffer"
    execute if entity @s[type=snow_golem] run data modify storage temp:asset.lib mob.entityType set value "snow_golem"
    execute if entity @s[type=strider] run data modify storage temp:asset.lib mob.entityType set value "strider"
    execute if entity @s[type=tadpole] run data modify storage temp:asset.lib mob.entityType set value "tadpole"
    execute if entity @s[type=tropical_fish] run data modify storage temp:asset.lib mob.entityType set value "tropical_fish"
    execute if entity @s[type=turtle] run data modify storage temp:asset.lib mob.entityType set value "turtle"
    execute if entity @s[type=wolf] run data modify storage temp:asset.lib mob.entityType set value "wolf"

##
    execute if entity @s[type=#lib:hitbox/babies] run data modify storage temp:asset.lib mob.entityType set value "#babies"
    execute if entity @s[type=#lib:hitbox/cats] run data modify storage temp:asset.lib mob.entityType set value "#cats"
    execute if entity @s[type=#lib:hitbox/cows] run data modify storage temp:asset.lib mob.entityType set value "#cows"
    execute if entity @s[type=#lib:hitbox/flyings] run data modify storage temp:asset.lib mob.entityType set value "#flyings"
    execute if entity @s[type=#lib:hitbox/hoglins] run data modify storage temp:asset.lib mob.entityType set value "#hoglins"
    execute if entity @s[type=#lib:hitbox/horses] run data modify storage temp:asset.lib mob.entityType set value "#horses"
    execute if entity @s[type=#lib:hitbox/humanoid] run data modify storage temp:asset.lib mob.entityType set value "#humanoid"
    execute if entity @s[type=#lib:hitbox/llamas] run data modify storage temp:asset.lib mob.entityType set value "#llamas"
    execute if entity @s[type=#lib:hitbox/mofumofu] run data modify storage temp:asset.lib mob.entityType set value "#mofumofu"
    execute if entity @s[type=#lib:hitbox/squids] run data modify storage temp:asset.lib mob.entityType set value "#squids"
