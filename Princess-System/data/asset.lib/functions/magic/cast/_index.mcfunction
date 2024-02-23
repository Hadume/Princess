#> asset.lib:magic/cast/_index
# 
# @within 

#> Tags.Public
# @public
 #declare tag Spell
#> Tags
# @within function
#   asset:magic/*/cast/main
#   asset.lib:magic/cast/init/*
 #declare tag Spell.Init
 #declare tag SmartMotion
 #declare tag Break
#> scoreboard
# @within function asset.lib:magic/cast/init/*
  scoreboard objectives add sm.Speed dummy
#> Function
# @within function asset.lib:magic/cast/init/*
 #declare function smart_motion:core/tp
#> Predicate
# @within function asset.lib:magic/cast/init/*
 #declare predicate player:sneaking
