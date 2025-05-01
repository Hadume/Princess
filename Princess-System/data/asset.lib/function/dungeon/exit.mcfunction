#> asset.lib:dungeon/exit
# ダンジョンから退出する
# @within tag/function asset.lib:dungeon/exit

## ダンジョン外に移動
	function #asset:dungeon/exit with storage asset:dungeon

## ダンジョンIDを消す
	scoreboard players reset @s Dungeon

## 少し暗くする
	effect give @s blindness 2 0 true

## 音を鳴らす
	execute at @s run playsound block.portal.travel block @s ~ ~ ~ 0.25 1.0 0.0
