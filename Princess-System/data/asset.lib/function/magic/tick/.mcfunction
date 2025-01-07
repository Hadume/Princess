#> asset.lib:magic/tick/
# 魔法のtickでの確定処理
# @within function main:tick/

#> Tags
# @private
	#declare tag Stick

## 持続時間
	scoreboard players remove @s Duration 1

## 持続時間をコピー
	scoreboard players operation #Duration Temp = @s Duration

## 魔法を消す
	execute if score #Duration Temp matches ..0 run function asset.lib:magic/extinguish
	execute if entity @s[tag=Stick,scores={sm.Speed=0}] run function asset.lib:magic/extinguish

##
	execute if score #Duration Temp matches 1.. store result storage asset:magic ID int 1 run scoreboard players get @s ID.Asset
	execute if score #Duration Temp matches 1.. run function asset:magic/tick with storage asset:magic

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Duration Temp
