#> menu:
# インベントリUIを更新
# @within function main:advancements/inventory_changed

say menu:

## UIのアイテムの数を取得
	execute store result score #InvCount Temp if data storage api: Inventory[{components:{"minecraft:custom_data":{Menu:{}}}}]

## ページごとの動作
	execute if entity @s[scores={Menu=0..999}] run return run function menu:home/
	execute if entity @s[scores={Menu=1000..1999}] run return run function menu:skilltree/root/
	execute if entity @s[scores={Menu=2000..2999}] run return run function menu:equipment/
	execute if entity @s[scores={Menu=4000..4999}] run return run function menu:status/
	execute if entity @s[scores={Menu=5000..5999}] run return run function menu:storage/
	execute if entity @s[scores={Menu=7000..7999}] run return run function menu:communicate/
