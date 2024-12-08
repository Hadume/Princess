#> menu:communicate/trade/decide/trade/
# 取引
# @within function menu:communicate/trade/decide/timer/tick/decided/trader

## インベントリーをコピー
	function #api:get.nbt/inventory

## アイテムを
	function menu:communicate/trade/decide/trade/common

## 相手でも
	scoreboard players operation #Trade.With.Copy Temp = @s Trade.With
	execute as @a if score @s ID = #Trade.With.Copy Temp run function #api:get.nbt/inventory
	execute as @a if score @s ID = #Trade.With.Copy Temp run function menu:communicate/trade/decide/trade/common

## ホームに戻る
	function #api:get.nbt/inventory
	function menu:communicate/trade/back/

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Trade.With.Copy
