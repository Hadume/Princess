#> skilltree:set/flamme
# 炎のスキルツリーを設定
# @within tag/function skilltree:admin/set/flamme

## マップ番号
    scoreboard players set #SkillMap Temp 1

## 共通処理
    execute positioned 0 ~ 1500 run function skilltree:set/common/

## 一時使用ScoreHolderをリセット
    scoreboard players reset #SkillMap Temp
