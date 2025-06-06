#> skilltree:set/wasser
# 水のスキルツリーを設定
# @within tag/function skilltree:admin/set/wasser

## マップ番号
    scoreboard players set #SkillMap Temp 3

## 共通処理
    execute positioned 0 ~ 2000 run function skilltree:set/common/

## 一時使用ScoreHolderをリセット
    scoreboard players reset #SkillMap Temp
