#> skilltree:move/wind
# 風の魔法使いのスキルツリー
# @within function menu:skilltree/root/move

## 共通処理
    function skilltree:move/common/

## スコア
    scoreboard players set @s SkillTree 200000000

## 移動
    execute in overworld run tp @s 0 -7 2500 0 90
