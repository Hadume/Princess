#> asset.lib:dungeon/set/marker
# ダンジョンのマーカーを設置する
# @within tag/function asset.lib:dungeon/set/marker

## tagを追加
	tag @s add Dungeon

## IDを設定
	$scoreboard players set @s Dungeon $(ID)
