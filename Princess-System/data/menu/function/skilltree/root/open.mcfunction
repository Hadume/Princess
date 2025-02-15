#> menu:skilltree/root/open
#
# @within function menu:home/root/

## スコアを変更
	scoreboard players set @s Menu 1000

## UI
	function menu:_common/repair {Parent:"skilltree",Child:"root"}

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0
