#> menu:communicate/root/open/player_data
# プレイヤーのデータを取得
# @within function menu:pages/communicate/open/

## プレイヤーヘッドを取得
	loot replace block 0 -64 0 container.0 loot menu:communicate/player_head
	data modify storage temp: Players append from block 0 -64 0 Items[0]

## IDを保存
	execute store result storage temp: Players[-1].components."minecraft:custom_data".ID int 1 run scoreboard players get @s ID
