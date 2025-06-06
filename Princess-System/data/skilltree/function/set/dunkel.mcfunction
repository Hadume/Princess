#> skilltree:set/dunkel
# 闇のスキルツリーを設定
# @within tag/function skilltree:admin/set/dunkel

## マップ番号
    scoreboard players set #SkillMap Temp 5

## 共通処理
    execute positioned 0 ~ 3500 run function skilltree:set/common/

## 一時使用ScoreHolderをリセット
    scoreboard players reset #SkillMap Temp
