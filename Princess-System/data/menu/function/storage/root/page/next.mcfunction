#> menu:storage/root/page/next
#
# @within function menu:storage/root/

## ページ番号を追加
	execute if entity @s[scores={Menu=..5098}] run scoreboard players add @s Menu 1

## アイテムを出す
	function menu:storage/root/items/

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0
