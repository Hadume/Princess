#> asset:magic/cast
# 魔法を使う時の共通部分
# @within function asset.lib:magic/cast/condition/-common

## タイプを取得
	$function asset:magic/$(ID)/type

## 引数
	execute if function #asset.lib:magic/type run function asset.lib:magic/cast/common/

##
	$execute if data storage asset:magic {CanCast:1b} if score #Multiple Asset matches 1.. run function asset:magic/$(ID)/cast/

## tagを削除
	execute as @e[tag=Lib.InRange] run tag @s remove Lib.InRange

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Multiple

## Storageを削除
	data remove storage asset:magic CanCast
	data remove storage asset:magic Name
	data remove storage asset:magic MP
	data remove storage asset:magic Cooltime
	data remove storage asset:magic Multiple
	execute if data storage asset:magic Amount run data remove storage asset:magic Amount
	execute if data storage asset:magic Duration run data remove storage asset:magic Duration
	execute if data storage asset:magic Spread run data remove storage asset:magic Spread
	execute if data storage asset:magic Range run data remove storage asset:magic Range
	execute if data storage asset:magic Speed run data remove storage asset:magic Speed
	execute if data storage asset:magic Targets run data remove storage asset:magic Targets
	execute if data storage asset:magic Elements run data remove storage asset:magic Elements
