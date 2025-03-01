#> menu:change_page
# ページを変更したら
# @within function menu:

## ページ番号を記録
	scoreboard players operation @s Menu = #Menu Temp

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0
