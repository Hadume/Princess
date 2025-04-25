#> asset.lib:dungeon/tick/marker/enter
# ダンジョンに入場する
# @within function asset.lib:dungeon/tick/marker/

## ダンジョン内に移動
	function #asset:dungeon/enter with storage asset:dungeon

## 少し暗くする
	effect give @s blindness 2 0 true

## 音を鳴らす
	execute at @s run playsound block.portal.travel block @s ~ ~ ~ 0.25 1.0 0.0
