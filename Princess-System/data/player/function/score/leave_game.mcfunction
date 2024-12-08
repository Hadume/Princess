#> player:score/leave_game
# ゲームから退出したら
# @within function main:tick/player

## スピードを更新
	function #lib:status/speed/update

## メニューをホームへ
	execute unless entity @s[scores={Menu=0}] run function menu:home

## スコアをリセット
	scoreboard players reset @s LeaveGame
