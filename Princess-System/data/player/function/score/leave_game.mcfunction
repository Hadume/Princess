#> player:score/leave_game
# ゲームから退出したら
# @within function main:tick/player

## スピードを更新
	function #lib:status/speed/update

## メニューをホームへ
	execute unless entity @s[scores={Menu=1}] store result score #Menu Temp run function menu:home
	execute unless score #Menu Temp matches 0 run function menu:change_page

## スコアをリセット
	scoreboard players reset @s LeaveGame

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Menu Temp
