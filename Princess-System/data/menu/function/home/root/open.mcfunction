#> menu:home/root/open
#
# @within function
#   menu:magic/back
#   menu:*/root/

## スコアを変更
	scoreboard players set @s Menu 0

## UI
	function menu:-common/repair {Parent:"home",Child:"root"}

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0
