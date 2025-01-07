#> asset.lib:magic/cast/spell/display/
# 表示用Entityを初期化
# @within function asset.lib:magic/cast/spell/main

## Rotation を取得
	function #api:get.nbt/rotation

##
	execute as @e[type=block_display,tag=Spell.Init] run function asset.lib:magic/cast/spell/display/main
