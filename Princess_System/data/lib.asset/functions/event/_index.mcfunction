#> lib.asset:event/_index
# 
# @within 

#> Tags.ID
# @within *
#   player:**
#   lib.asset:event/object.init
 #declare tag NPC.0.0
 #declare tag NPC.0.1
 #declare tag NPC.0.2
 #declare tag NPC.0.3
 #declare tag NPC.1.0
 #declare tag NPC.1.1
 #declare tag NPC.1.2
 #declare tag NPC.1.3
 #declare tag NPC.2.0
 #declare tag NPC.2.1
 #declare tag NPC.2.2
 #declare tag NPC.2.3
 #declare tag NPC.3.0
 #declare tag NPC.3.1
 #declare tag NPC.3.2
 #declare tag NPC.3.3
 #declare tag NPC.4.0
 #declare tag NPC.4.1
 #declare tag NPC.4.2
 #declare tag NPC.4.3
 #declare tag NPC.5.0
 #declare tag NPC.5.1
 #declare tag NPC.5.2
 #declare tag NPC.5.3
 #declare tag NPC.6.0
 #declare tag NPC.6.1
 #declare tag NPC.6.2
 #declare tag NPC.6.3
 #declare tag NPC.7.0
 #declare tag NPC.7.1
 #declare tag NPC.7.2
 #declare tag NPC.7.3
#> Tags
# @within function
#   asset:event/*/**
#   main:tick
#   player:tick
 #declare tag Object
#> ScoreHolder
# @within function
#   asset:event/*/**
#   lib.asset:event/object.init
 #declare score_holder $ID.Object
#> ScoreHolder.Process
# @within function
#   asset:event/*/process/**
#   lib.asset:event/process
#   player:event/process
 #declare score_holder $EventCopy
 #declare score_holder $EventTimerCopy
