#> menu:home/root/open
#
# @within function menu:*/root/

## スコアを変更
	scoreboard players set @s Menu 0

## UI
	data modify storage menu: Function set value {Parent:"home",Child:"root"}
	function menu:_common/repair with storage menu: Function

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0
