#> asset.lib:spawner/tick/
#
# @within function main:tick/

## スポーンまでの時間
	scoreboard players remove @s Spawner.Delay 1

## スポーンできるか確認
	execute if entity @s[scores={Spawner.Delay=..0}] run function asset.lib:spawner/tick/spawn
