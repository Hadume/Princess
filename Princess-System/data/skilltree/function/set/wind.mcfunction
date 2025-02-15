#> skilltree:set/wind
# 風のスキルツリーを設定
# @within tag/function skilltree:admin/set/wind

## マップ番号
	scoreboard players set #SkillMap Temp 2

## 共通処理
	execute positioned 0 ~ 2500 run function skilltree:set/common/

## 一時使用ScoreHolderをリセット
	scoreboard players reset #SkillMap Temp
