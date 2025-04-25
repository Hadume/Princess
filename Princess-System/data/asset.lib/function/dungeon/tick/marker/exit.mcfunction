#> asset.lib:dungeon/tick/marker/exit
# ダンジョンから退出する
# @within function asset.lib:dungeon/tick/marker/

## ダンジョン外に移動
	function #asset:dungeon/exit with storage asset:dungeon

## 音を鳴らす
	execute at @s run playsound block.portal.travel block @s ~ ~ ~ 0.25 1.0 0.0
