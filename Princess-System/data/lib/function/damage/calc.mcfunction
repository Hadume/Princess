#> lib:damage/calc
# ダメージを計算
# @within function lib:damage/main

#> ScoreHolder.Temp
# @private
	#declare score_holder #ATK.Copy
	#declare score_holder #DEF.Copy

## スコアをコピー
	scoreboard players operation #ATK.Copy Temp = #Lib.ATK Lib
	scoreboard players operation #DEF.Copy Temp = #Lib.DEF Lib

## Damage = (ATK / 2) - (DEF / 4)
	scoreboard players operation #ATK.Copy Temp /= #2 Const
	scoreboard players operation #DEF.Copy Temp /= #4 Const
	scoreboard players operation #ATK.Copy Temp -= #DEF.Copy Temp

## 数値を保管
	scoreboard players operation #Lib.Damage Lib = #ATK.Copy Temp

## 0以下にならないように補正
	execute if score #Lib.Damage Lib matches ..-1 run scoreboard players set #Lib.Damage Lib 0

## 一時使用ScoreHolderをリセット
	scoreboard players reset #ATK.Copy
	scoreboard players reset #DEF.Copy
