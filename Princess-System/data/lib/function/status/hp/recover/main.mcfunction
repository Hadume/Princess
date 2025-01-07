#> lib:status/hp/recover/main
# HPを回復
# @within function lib:status/hp/recover/

#> 回復量
# @private
	#declare score_holder #Recovery

## 回復量を取得
	execute store result score #Recovery Temp run data get storage lib: RcvrHP.Amount

## 回復
	scoreboard players operation @s HP += #Recovery Temp

## 回復しすぎたら、最大値まで戻す
	execute if score @s HP > @s HP.Max run scoreboard players operation @s HP = @s HP.Max

## 体力表示を更新
	function #lib:status/hp/update

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Recovery Temp
