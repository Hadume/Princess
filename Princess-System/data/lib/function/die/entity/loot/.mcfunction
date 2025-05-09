#> lib:die/entity/loot/
# 攻撃を与えたプレイヤーにドロップ品を渡す
# @within function lib:die/entity/

## スコアをコピー
	scoreboard players operation #Exp Temp = @s Exp
	scoreboard players operation #Money Temp = @s Money

## データをコピー
	data modify storage temp: AttackBy set from storage dat: _.AttackBy

##
	function lib:die/entity/loot/loop

## tagを削除
	execute as @a[tag=Looted] run tag @s remove Looted

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Exp Temp
	scoreboard players reset #Money Temp
	scoreboard players reset #ID Temp

## 一時使用Storageを削除
	data remove storage temp: AttackBy
