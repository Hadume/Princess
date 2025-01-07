#> lib:exp/levelup/
# レベルアップ
# @within function lib:exp/

#> ScoreHolder.Temp
# @within function lib:exp/levelup/*
	#declare score_holder #Exp.Need

##
	function lib:exp/levelup/loop

## ステータスを更新
	data modify storage lib: Stats set value ["HPMax","MPMax","ATK","DEF"]
	function #lib:stats

## 体力、魔力を回復
	scoreboard players operation @s HP = @s HP.Max
	scoreboard players operation @s MP = @s MP.Max
	### 更新
		function #lib:status/hp/update
		function #lib:status/mp/update


## レベルアップを知らせる
	tellraw @s ["\nレベルが",{"score":{"name": "@s","objective": "Lvl"},"color": "yellow","bold": true},"になりました！"]

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Exp.Need Temp
