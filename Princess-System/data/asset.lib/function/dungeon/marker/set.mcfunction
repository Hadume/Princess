#> asset.lib:dungeon/marker/set
# ダンジョンのマーカーを設置する
# @within tag/function asset.lib:dungeon/marker/set

## tagを追加
	tag @s add Dungeon

## IDを設定
	$scoreboard players set @s Dungeon $(ID)
