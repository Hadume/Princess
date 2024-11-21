#> asset.lib:magic/tick/
# 魔法のtickでの確定処理
# @within function main:tick/

#> Tags
# @private
	#declare tag Stick

## 持続時間
	scoreboard players remove @s Duration 1

## 魔法を消す
	execute if entity @s[scores={Duration=..0}] run function asset.lib:magic/extinguish
	execute if entity @s[tag=Stick,scores={sm.Speed=0}] run function asset.lib:magic/extinguish

##
	execute if entity @s[scores={Duration=1..}] store result storage asset:magic ID int 1 run scoreboard players get @s ID.Asset
	execute if entity @s[scores={Duration=1..}] run function #asset:magic/tick/spell
