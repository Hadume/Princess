#> asset.lib:magic/action/damage/main
# ダメージを与える
# @within function asset.lib:magic/action/damage/

#> ScoreHolder
# @within function asset.lib:magic/action/damage/*
 #declare score_holder #StoredDamage

## 攻撃者のIDを保存
	execute unless data storage asset:magic CasterID store result storage asset:magic CasterID int 1 run scoreboard players get @s PlayerID
##
	tag @s add This
	execute as @e[tag=Lib.InRange] run function asset.lib:magic/action/damage/entity
	tag @s remove This
## 保存されたダメージ
	execute store result storage asset:magic StoredDamage int 1 run scoreboard players get #StoredDamage Temp
## パーティクル表示
	execute if data storage asset:magic {Elements:["Flamme"]} as @e[tag=Lib.InRange] at @s run particle dust 0.75 0.25 0.25 1 ~ ~1 ~ 0.25 0.5 0.25 0 25 force
	execute if data storage asset:magic {Elements:["Wasser"]} as @e[tag=Lib.InRange] at @s run particle dust 0.5 0.5 0.9 1 ~ ~1 ~ 0.25 0.5 0.25 0 25 force
	execute if data storage asset:magic {Elements:["Wind"]} as @e[tag=Lib.InRange] at @s run particle dust 0.5 0.9 0.5 1 ~ ~1 ~ 0.25 0.5 0.25 0 25 force
	execute if data storage asset:magic {Elements:["Licht"]} as @e[tag=Lib.InRange] at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.25 0.5 0.25 0 25 force
	execute if data storage asset:magic {Elements:["Dunkel"]} as @e[tag=Lib.InRange] at @s run particle dust 0.25 0.25 0.25 1 ~ ~1 ~ 0.25 0.5 0.25 0 25 force
## 一時使用ScoreHolderをリセット
	scoreboard players reset #StoredDamage
