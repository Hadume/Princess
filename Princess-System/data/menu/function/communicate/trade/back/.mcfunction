#> menu:communicate/trade/back/
# トレード決裂
# @within function
#   menu:communicate/trade/decide/trade/
#   menu:communicate/trade/
#   menu:home

## ホームに戻る
	function menu:communicate/back

## 相手の状態も戻してあげる
	scoreboard players operation #Trade.With Temp = @s Trade.With
	execute as @a if score @s ID = #Trade.With Temp run function menu:communicate/trade/back/trader

## 自身のスコアをリセット
	scoreboard players reset @s Trade.With

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Trade.With Temp
