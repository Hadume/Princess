#> lib:status/mp/recover/main
# MPを回復
# @within function lib:status/mp/recover/

#> 回復量
# @private
	#declare score_holder #Recovery

## 回復量を取得
	execute store result score #Recovery Temp run data get storage lib: RcvrMP.Amount

## 回復
	scoreboard players operation @s MP += #Recovery Temp

## 回復しすぎたら、最大値まで戻す
	execute if score @s MP > @s MP.Max run scoreboard players operation @s MP = @s MP.Max

## 魔力表示を更新
	function lib:status/mp/update

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Recovery
