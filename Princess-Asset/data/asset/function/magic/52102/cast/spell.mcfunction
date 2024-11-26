#> asset:magic/52102/cast/spell
# 魔法の本体
# @within function asset:magic/52102/cast/
# @private

## 召喚位置
	data modify storage lib: Spread.Amount set from storage asset:magic Spread
	data modify storage lib: Spread.OnGround set value 1b
	summon marker ~ ~ ~ {Tags:["Spread"]}
	execute as @e[type=marker,tag=Spread] at @s run function #lib:spread

## 本体
	execute as @e[type=marker,tag=Spread] at @s unless block ~ ~-0.001 ~ #main:no_collision run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Spell","Spell.Init"]}

## 初期化
	execute if entity @e[type=armor_stand,tag=Spell.Init] run function #asset.lib:magic/cast/spell

## 仮markerを消す
	kill @e[type=marker,tag=Spread]

## 発動数を減らす
	scoreboard players remove #Multiple Asset 1

## まだ発動する
	execute if score #Multiple Asset matches 1.. run function asset:magic/52102/cast/spell
