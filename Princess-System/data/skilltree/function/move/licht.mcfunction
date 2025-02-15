#> skilltree:move/licht
# 光の魔法使いのスキルツリー
# @within function menu:skilltree/root/move

## 共通処理
	function skilltree:move/common/

## スコア
	scoreboard players set @s SkillTree 400000000

## 移動
	execute in overworld run tp @s 0 -7 3000 0 90
