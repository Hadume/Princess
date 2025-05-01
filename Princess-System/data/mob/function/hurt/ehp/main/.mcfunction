#> mob:hurt/ehp/main/
#
# @within function mob:hurt/ehp/7

## 攻撃力を取得
	execute if entity @s[tag=Enemy] run return run scoreboard players operation #Lib.ATK Lib = @s ATK
	execute if entity @s[tag=Boss] at @s run return run function mob:hurt/ehp/main/boss
