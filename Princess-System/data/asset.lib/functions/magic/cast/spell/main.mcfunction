#> asset.lib:magic/cast/spell/main
# 魔法を初期化
# @within function asset.lib:magic/cast/spell/

##
	tag @s add This
## 魔法を初期化
	execute as @e[type=armor_stand,tag=Spell.Init] run function asset.lib:magic/cast/spell/init/
## 表示用Entityを初期化
	execute as @e[type=block_display,tag=Spell.Init] run function asset.lib:magic/cast/spell/display
##
	tag @s remove This
