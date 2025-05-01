#> mob:damage_flags/
# ダメージ識別用flag
# @within function asset.lib:mob/summon/main

#> ScoreHolder
# @private
	#declare score_holder #DmgFlag

## 値を増加
	scoreboard players add #DmgFlag Global 1

## MOBに渡す
	scoreboard players operation @s ID.DmgFlag = #DmgFlag Global

## tagを追加する
	function mob:damage_flags/add.tags
