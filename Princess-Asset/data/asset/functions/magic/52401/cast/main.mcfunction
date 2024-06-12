#> asset:magic/52401/cast/main
# 
# @within function asset:magic/52401/cast/check.condition

#> Tags
# @private
 #declare tag AEC.Init

## 音を鳴らす
  #execute at @s run playsound entity.generic.splash master @s ~ ~ ~ 0.5 1
  #execute at @s run playsound block.bubble_column.upwards_ambient master @s ~ ~ ~ 0.5 2
## 範囲内のMObを特定
  function asset.lib:magic/action/range/
## 
  execute as @e[tag=Lib.InRange] at @s run summon area_effect_cloud ~ ~ ~ {effects:[{ambient:1b,amplifier:0b,duration:464,id:"night_vision",show_particles:0b,show_icon:1b}],Duration:4,Age:4,WaitTime:2,Particle:"block air",Tags:["AEC.Init"]}
  execute as @e[type=area_effect_cloud,tag=AEC.Init] run data modify entity @s effects[{id:"minecraft:night_vision"}].duration set from storage asset:magic Duration
  execute as @e[type=area_effect_cloud,tag=AEC.Init] run tag @s remove AEC.Init
## 音
  execute at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2
