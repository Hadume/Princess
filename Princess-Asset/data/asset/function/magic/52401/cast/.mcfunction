#> asset:magic/52401/cast/
# 魔法を発動
# @within function asset:magic/cast

#> Tags
# @private
	#declare tag AEC.Init

## 範囲内のMobを特定
	function asset.lib:magic/action/range/

##
	execute as @e[tag=Lib.InRange] at @s run summon area_effect_cloud ~ ~ ~ {potion_contents:{custom_effects:[{ambient:1b,amplifier:0b,duration:464,id:"night_vision",show_particles:0b,show_icon:1b}]},Duration:4,Age:4,WaitTime:2,Particle:{type:"block",block_state:{Name:"air"}},Tags:["AEC.Init"]}
	execute as @e[type=area_effect_cloud,tag=AEC.Init] run data modify entity @s potion_contents.custom_effects[{id:"minecraft:night_vision"}].duration set from storage asset:magic Duration
	execute as @e[type=area_effect_cloud,tag=AEC.Init] run tag @s remove AEC.Init

## 音
	playsound entity.player.levelup master @a ~ ~ ~ 1 2
