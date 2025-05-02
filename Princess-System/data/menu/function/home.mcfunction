#> menu:home
# どのページからもホームに戻る
# @within function player:score/leave_game

## 例外処理
	execute if entity @s[scores={Menu=7200}] run return run function menu:communicate/trade/back/

## 元に
	return run function menu:home/root/open
