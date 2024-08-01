#> asset:magic/52102/cast/main
#
# @within function asset:magic/52102/cast/check.condition

## 共通処理
	function asset.lib:magic/cast/common/
## 本体を召喚
	### 召喚位置
		data modify storage lib: Spread.Amount set from storage asset:magic Spread
		data modify storage lib: Spread.OnGround set value 1b
		summon marker ~ ~ ~ {Tags:["Spread"]}
		execute as @e[type=marker,tag=Spread] at @s run function lib:spread/
	###
		execute as @e[type=marker,tag=Spread] at @s unless block ~ ~-0.001 ~ #main:no_collision run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Spell","Spell.Init"]}
		kill @e[type=marker,tag=Spread]
## 音を鳴らす
	execute if entity @e[type=armor_stand,tag=Spell.Init] at @s run playsound block.lava.ambient master @a ~ ~ ~ 0.5 2
	execute if entity @e[type=armor_stand,tag=Spell.Init] at @s run playsound block.fire.ambient master @a ~ ~ ~ 0.25 0.5
## 初期化
	function asset.lib:magic/cast/spell/check.condition
