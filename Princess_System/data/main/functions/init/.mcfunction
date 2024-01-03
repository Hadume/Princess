#> main:init/
# 初期化
# @within function main:load

#> Storage
# @internal
 #declare storage princess:
#> Tags
# @within function *:**
 #declare tag Init
## 初期化完了
	#data modify storage princess: Init set value 1b
#> Scoreboard
# @within function *:**
	scoreboard objectives add Global dummy
	scoreboard objectives add Const dummy
	scoreboard objectives add Temp dummy
	scoreboard objectives add Event dummy
	scoreboard objectives add Event.Timer dummy
	scoreboard objectives add ID.Object dummy

	#scoreboard objectives add co dummy
	#scoreboard objectives add as dummy
	#scoreboard objectives add reset minecraft.dropped:minecraft.heart_of_the_sea
	#scoreboard objectives add kill totalKillCount
	#scoreboard objectives add bell minecraft.custom:bell_ring
	#scoreboard objectives add mura1 dummy
	#scoreboard objectives add death deathCount
	#scoreboard objectives add death1 deathCount
#> Const
# @within function *:**
 #declare score_holder $4
 #declare score_holder $2^16
	scoreboard players set $4 Const 4
	scoreboard players set $2^16 Const 65536
## Gamerule
	function main:init/gamerule
## Gamemode
	defaultgamemode adventure
## Difficulty
	difficulty hard
## デバッグログ
	execute as @a[gamemode=creative] run tellraw @s {"text": "\nリロードされたニャ！","color": "light_purple"}
