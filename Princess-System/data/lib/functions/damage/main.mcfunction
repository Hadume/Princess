#> lib:damage/main
# ダメージを与える
# @within function lib:damage/

## ダメージを計算
	function lib:damage/calc
## ダメージを蓄積しておく
	#scoreboard players operation #StoredDamage Lib += #Damage Temp
## HPを減らす
	scoreboard players operation @s HP -= #Lib.Damage Lib
	function lib:status/hp/update/
## ダメージ表示
	loot spawn ^ ^ ^ loot lib:damage/display
	execute as @e[type=item,nbt={Item:{tag:{Lib:{Damage:1b,Init:1b}}}}] at @s run function lib:damage/display
## 回復
	execute if entity @s[type=!#mob:undead] run effect give @s instant_health 1 200 true
	execute if entity @s[type=#mob:undead] run effect give @s instant_damage 1 200 true
