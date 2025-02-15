#> skilltree:back/
# 元の場所に戻る
# @within function skilltree:click/left

## スコアをリセット
	scoreboard players reset @s SkillTree

## ホットバーを消す
	loot replace entity @s hotbar.0 loot skilltree:clear.hotbar

## ホットバーを元に戻す
	function #api:e_dat/please
	data remove block 0 -64 0 Items
	data modify block 0 -64 0 Items set from storage dat: _.SkillTree.HotBar
	loot replace entity @s hotbar.0 9 mine 0 -64 0 debug_stick
	### いらないデータを消す
		data remove storage dat: _.SkillTree.HotBar


## 透明状態じゃなくす
	effect clear @s invisibility

## 元の位置に戻す
	scoreboard players operation #ID Temp = @s ID
	execute as @e[type=marker,tag=SkillPos] if score @s ID = #ID Temp run tag @s add This
	tp @s @e[type=marker,tag=This,limit=1]

## チャンクの読み込みを止める
	execute as @e[type=marker,tag=This] at @s run function skilltree:back/stop.chunk.loading

## 一時使用ScoreHolderをリセット
	scoreboard players reset #ID Temp
