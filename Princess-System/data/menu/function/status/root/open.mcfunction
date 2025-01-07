#> menu:status/root/open
#
# @within function menu:home/root/

## スコアを変更
	scoreboard players set @s Menu 4000

## UI
	function menu:_common/repair {Parent:"status",Child:"root"}

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0
