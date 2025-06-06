#> skilltree:set/licht
# 光のスキルツリーを設定
# @within tag/function skilltree:admin/set/licht

## マップ番号
    scoreboard players set #SkillMap Temp 4

## 共通処理
    execute positioned 0 ~ 3000 run function skilltree:set/common/

## 一時使用ScoreHolderをリセット
    scoreboard players reset #SkillMap Temp
