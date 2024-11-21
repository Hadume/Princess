#> lib:status/hp/update/
#
# @input as entity
# @api

#> ScoreHolder
# @within function lib:status/hp/update/*
	#declare score_holder #HP.Copy

## 体力をコピー
	scoreboard players operation #HP.Copy Temp = @s HP

## 体力が0以下だったら
	execute if score #HP.Copy Temp matches ..0 run function lib:die/

## 体力が1以上だったら
	execute if score #HP.Copy Temp matches 1.. run function lib:status/hp/update/main

## 一時使用ScoreHolderをリセット
	scoreboard players reset #HP.Copy
