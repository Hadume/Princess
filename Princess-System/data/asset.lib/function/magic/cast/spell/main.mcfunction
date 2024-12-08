#> asset.lib:magic/cast/spell/main
# 魔法を初期化
# @within function asset.lib:magic/cast/spell/

## 魔法を初期化
	### IDをコピー
		scoreboard players operation #ID.Copy Temp = @s ID

	###
		execute as @e[type=armor_stand,tag=Spell.Init] run function asset.lib:magic/cast/spell/init/


## 表示用Entityを初期化
	### Rotation を取得
		function #api:get.nbt/rotation

	###
		execute as @e[type=block_display,tag=Spell.Init] run function asset.lib:magic/cast/spell/display


## 一時使用ScoreHolderをリセット
	scoreboard players reset #ID.Copy
