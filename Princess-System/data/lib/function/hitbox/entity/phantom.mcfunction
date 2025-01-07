#> lib:hitbox/entity/phantom
# ファントムのサイズ
# @within function lib:hitbox/main

#> ScoreHolder
# @private
	#declare score_holder #Size

## サイズを取得
	function #api:get.nbt/size

## データを用意
	data modify storage lib: HitBox set value [0.0f,0.0f]

## 計算
	### 幅
		execute store result score #Size Temp run data get storage api: Size
		scoreboard players operation #Size Temp *= #2 Const
		scoreboard players add #Size Temp 9
		execute store result storage lib: HitBox[0] float 0.1 run scoreboard players get #Size Temp

	### 高さ
		execute store result score #Size Temp run data get storage api: Size
		scoreboard players add #Size Temp 5
		execute store result storage lib: HitBox[1] float 0.1 run scoreboard players get #Size Temp


## 一時使用ScoreHolderをリセット
	scoreboard players reset #Size Temp
