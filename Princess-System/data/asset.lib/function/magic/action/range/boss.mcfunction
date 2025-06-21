#> asset.lib:magic/action/range/boss
# ボスの本体を対象に
# @within function asset.lib:magic/action/range/

##
    scoreboard players operation #dmgFlag temp = @s dmgFlag
    execute as @e[tag=aj.global.root] if score @s dmgFlag = #dmgFlag temp run tag @s add libInRange

## 範囲内tagを削除
    tag @s remove libInRange

## 一時使用scoreHolderを削除
    scoreboard players reset #dmgFlag temp
