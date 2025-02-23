#> lib:stats/calc/-common/
#
# @within function lib:stats/calc/*

#> ScoreHolder
# @within function lib:stats/calc/-common/**
	#declare score_holder #Amount.Stored
	#declare score_holder #Amount.Stored.1
	#declare score_holder #Amount.Stored.2

## 装備ごとに数値を取得
	function lib:stats/calc/-common/get.amount.loop

## 元の値に*100%を加算
	execute if score #Amount.Stored.1 Temp matches ..2147483647 run function lib:stats/calc/-common/operation/1

## 元の値に*100%を乗算
	execute if score #Amount.Stored.2 Temp matches ..2147483647 run function lib:stats/calc/-common/operation/2

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Amount.Stored Temp
	scoreboard players reset #Amount.Stored.1 Temp
	scoreboard players reset #Amount.Stored.2 Temp

## 一時使用Storageを削除
	data remove storage temp: Stats
	data remove storage temp: Stat
