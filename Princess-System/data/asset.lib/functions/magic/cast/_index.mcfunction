#> asset.lib:magic/cast/_index
# 
# @within 

#> Tags.Public
# @public
 #declare tag Spell
#> Tags
# @within function
#   asset:magic/*/cast/main
#   asset.lib:magic/cast/spell/*
 #declare tag Spell.Init
 #declare tag SmartMotion
 #declare tag Break
#> ScoreHolder
# @within function
#   asset.lib:magic/cast/**
#   asset:magic/*/cast/check.mp
 #declare score_holder #MagicMP
