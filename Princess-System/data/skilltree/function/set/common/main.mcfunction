#> skilltree:set/common/main
#
# @within function skilltree:set/common/

## まずは、設置済みのEntityを消す
    execute as @e[tag=Skill] if score @s SkillTree = #SkillMap Temp run kill @s

## インタラクションを設置
    summon interaction ~ -7 ~ {width:76.0f,height:4.0f,Tags:["Skill.Interaction","Skill","Init"]}

## ノードごとのMarkerを設置
    ### ~-6 ~
        summon marker ~-36 ~ ~-36 {Tags:["-6-6","Skill","Init"]}
        summon marker ~-36 ~ ~-30 {Tags:["-6-5","Skill","Init"]}
        summon marker ~-36 ~ ~-24 {Tags:["-6-4","Skill","Init"]}
        summon marker ~-36 ~ ~-18 {Tags:["-6-3","Skill","Init"]}
        summon marker ~-36 ~ ~-12 {Tags:["-6-2","Skill","Init"]}
        summon marker ~-36 ~ ~-6 {Tags:["-6-1","Skill","Init"]}
        summon marker ~-36 ~ ~ {Tags:["-60","Skill","Init"]}
        summon marker ~-36 ~ ~6 {Tags:["-61","Skill","Init"]}
        summon marker ~-36 ~ ~12 {Tags:["-62","Skill","Init"]}
        summon marker ~-36 ~ ~18 {Tags:["-63","Skill","Init"]}
        summon marker ~-36 ~ ~24 {Tags:["-64","Skill","Init"]}
        summon marker ~-36 ~ ~30 {Tags:["-65","Skill","Init"]}
        summon marker ~-36 ~ ~36 {Tags:["-66","Skill","Init"]}

    ### -5 ~
        summon marker ~-30 ~ ~-36 {Tags:["-5-6","Skill","Init"]}
        summon marker ~-30 ~ ~-30 {Tags:["-5-5","Skill","Init"]}
        summon marker ~-30 ~ ~-24 {Tags:["-5-4","Skill","Init"]}
        summon marker ~-30 ~ ~-18 {Tags:["-5-3","Skill","Init"]}
        summon marker ~-30 ~ ~-12 {Tags:["-5-2","Skill","Init"]}
        summon marker ~-30 ~ ~-6 {Tags:["-5-1","Skill","Init"]}
        summon marker ~-30 ~ ~ {Tags:["-50","Skill","Init"]}
        summon marker ~-30 ~ ~6 {Tags:["-51","Skill","Init"]}
        summon marker ~-30 ~ ~12 {Tags:["-52","Skill","Init"]}
        summon marker ~-30 ~ ~18 {Tags:["-53","Skill","Init"]}
        summon marker ~-30 ~ ~24 {Tags:["-54","Skill","Init"]}
        summon marker ~-30 ~ ~30 {Tags:["-55","Skill","Init"]}
        summon marker ~-30 ~ ~36 {Tags:["-56","Skill","Init"]}

    ### -4 ~
        summon marker ~-24 ~ ~-36 {Tags:["-4-6","Skill","Init"]}
        summon marker ~-24 ~ ~-30 {Tags:["-4-5","Skill","Init"]}
        summon marker ~-24 ~ ~-24 {Tags:["-4-4","Skill","Init"]}
        summon marker ~-24 ~ ~-18 {Tags:["-4-3","Skill","Init"]}
        summon marker ~-24 ~ ~-12 {Tags:["-4-2","Skill","Init"]}
        summon marker ~-24 ~ ~-6 {Tags:["-4-1","Skill","Init"]}
        summon marker ~-24 ~ ~ {Tags:["-40","Skill","Init"]}
        summon marker ~-24 ~ ~6 {Tags:["-41","Skill","Init"]}
        summon marker ~-24 ~ ~12 {Tags:["-42","Skill","Init"]}
        summon marker ~-24 ~ ~18 {Tags:["-43","Skill","Init"]}
        summon marker ~-24 ~ ~24 {Tags:["-44","Skill","Init"]}
        summon marker ~-24 ~ ~30 {Tags:["-45","Skill","Init"]}
        summon marker ~-24 ~ ~36 {Tags:["-46","Skill","Init"]}

    ### -3 ~
        summon marker ~-18 ~ ~-36 {Tags:["-3-6","Skill","Init"]}
        summon marker ~-18 ~ ~-30 {Tags:["-3-5","Skill","Init"]}
        summon marker ~-18 ~ ~-24 {Tags:["-3-4","Skill","Init"]}
        summon marker ~-18 ~ ~-18 {Tags:["-3-3","Skill","Init"]}
        summon marker ~-18 ~ ~-12 {Tags:["-3-2","Skill","Init"]}
        summon marker ~-18 ~ ~-6 {Tags:["-3-1","Skill","Init"]}
        summon marker ~-18 ~ ~ {Tags:["-30","Skill","Init"]}
        summon marker ~-18 ~ ~6 {Tags:["-31","Skill","Init"]}
        summon marker ~-18 ~ ~12 {Tags:["-32","Skill","Init"]}
        summon marker ~-18 ~ ~18 {Tags:["-33","Skill","Init"]}
        summon marker ~-18 ~ ~24 {Tags:["-34","Skill","Init"]}
        summon marker ~-18 ~ ~30 {Tags:["-35","Skill","Init"]}
        summon marker ~-18 ~ ~36 {Tags:["-36","Skill","Init"]}

    ### -2 ~
        summon marker ~-12 ~ ~-36 {Tags:["-2-6","Skill","Init"]}
        summon marker ~-12 ~ ~-30 {Tags:["-2-5","Skill","Init"]}
        summon marker ~-12 ~ ~-24 {Tags:["-2-4","Skill","Init"]}
        summon marker ~-12 ~ ~-18 {Tags:["-2-3","Skill","Init"]}
        summon marker ~-12 ~ ~-12 {Tags:["-2-2","Skill","Init"]}
        summon marker ~-12 ~ ~-6 {Tags:["-2-1","Skill","Init"]}
        summon marker ~-12 ~ ~ {Tags:["-20","Skill","Init"]}
        summon marker ~-12 ~ ~6 {Tags:["-21","Skill","Init"]}
        summon marker ~-12 ~ ~12 {Tags:["-22","Skill","Init"]}
        summon marker ~-12 ~ ~18 {Tags:["-23","Skill","Init"]}
        summon marker ~-12 ~ ~24 {Tags:["-24","Skill","Init"]}
        summon marker ~-12 ~ ~30 {Tags:["-25","Skill","Init"]}
        summon marker ~-12 ~ ~36 {Tags:["-26","Skill","Init"]}

    ### -1 ~
        summon marker ~-6 ~ ~-36 {Tags:["-1-6","Skill","Init"]}
        summon marker ~-6 ~ ~-30 {Tags:["-1-5","Skill","Init"]}
        summon marker ~-6 ~ ~-24 {Tags:["-1-4","Skill","Init"]}
        summon marker ~-6 ~ ~-18 {Tags:["-1-3","Skill","Init"]}
        summon marker ~-6 ~ ~-12 {Tags:["-1-2","Skill","Init"]}
        summon marker ~-6 ~ ~-6 {Tags:["-1-1","Skill","Init"]}
        summon marker ~-6 ~ ~ {Tags:["-10","Skill","Init"]}
        summon marker ~-6 ~ ~6 {Tags:["-11","Skill","Init"]}
        summon marker ~-6 ~ ~12 {Tags:["-12","Skill","Init"]}
        summon marker ~-6 ~ ~18 {Tags:["-13","Skill","Init"]}
        summon marker ~-6 ~ ~24 {Tags:["-14","Skill","Init"]}
        summon marker ~-6 ~ ~30 {Tags:["-15","Skill","Init"]}
        summon marker ~-6 ~ ~36 {Tags:["-16","Skill","Init"]}

    ### 0 ~
        summon marker ~ ~ ~-36 {Tags:["0-6","Skill","Init"]}
        summon marker ~ ~ ~-30 {Tags:["0-5","Skill","Init"]}
        summon marker ~ ~ ~-24 {Tags:["0-4","Skill","Init"]}
        summon marker ~ ~ ~-18 {Tags:["0-3","Skill","Init"]}
        summon marker ~ ~ ~-12 {Tags:["0-2","Skill","Init"]}
        summon marker ~ ~ ~-6 {Tags:["0-1","Skill","Init"]}
        summon marker ~ ~ ~ {Tags:["00","Skill","Init"]}
        summon marker ~ ~ ~6 {Tags:["01","Skill","Init"]}
        summon marker ~ ~ ~12 {Tags:["02","Skill","Init"]}
        summon marker ~ ~ ~18 {Tags:["03","Skill","Init"]}
        summon marker ~ ~ ~24 {Tags:["04","Skill","Init"]}
        summon marker ~ ~ ~30 {Tags:["05","Skill","Init"]}
        summon marker ~ ~ ~36 {Tags:["06","Skill","Init"]}

    ### 1 ~
        summon marker ~6 ~ ~-36 {Tags:["1-6","Skill","Init"]}
        summon marker ~6 ~ ~-30 {Tags:["1-5","Skill","Init"]}
        summon marker ~6 ~ ~-24 {Tags:["1-4","Skill","Init"]}
        summon marker ~6 ~ ~-18 {Tags:["1-3","Skill","Init"]}
        summon marker ~6 ~ ~-12 {Tags:["1-2","Skill","Init"]}
        summon marker ~6 ~ ~-6 {Tags:["1-1","Skill","Init"]}
        summon marker ~6 ~ ~ {Tags:["10","Skill","Init"]}
        summon marker ~6 ~ ~6 {Tags:["11","Skill","Init"]}
        summon marker ~6 ~ ~12 {Tags:["12","Skill","Init"]}
        summon marker ~6 ~ ~18 {Tags:["13","Skill","Init"]}
        summon marker ~6 ~ ~24 {Tags:["14","Skill","Init"]}
        summon marker ~6 ~ ~30 {Tags:["15","Skill","Init"]}
        summon marker ~6 ~ ~36 {Tags:["16","Skill","Init"]}

    ### 2 ~
        summon marker ~12 ~ ~-36 {Tags:["2-6","Skill","Init"]}
        summon marker ~12 ~ ~-30 {Tags:["2-5","Skill","Init"]}
        summon marker ~12 ~ ~-24 {Tags:["2-4","Skill","Init"]}
        summon marker ~12 ~ ~-18 {Tags:["2-3","Skill","Init"]}
        summon marker ~12 ~ ~-12 {Tags:["2-2","Skill","Init"]}
        summon marker ~12 ~ ~-6 {Tags:["2-1","Skill","Init"]}
        summon marker ~12 ~ ~ {Tags:["20","Skill","Init"]}
        summon marker ~12 ~ ~6 {Tags:["21","Skill","Init"]}
        summon marker ~12 ~ ~12 {Tags:["22","Skill","Init"]}
        summon marker ~12 ~ ~18 {Tags:["23","Skill","Init"]}
        summon marker ~12 ~ ~24 {Tags:["24","Skill","Init"]}
        summon marker ~12 ~ ~30 {Tags:["25","Skill","Init"]}
        summon marker ~12 ~ ~36 {Tags:["26","Skill","Init"]}

    ### 3 ~
        summon marker ~18 ~ ~-36 {Tags:["3-6","Skill","Init"]}
        summon marker ~18 ~ ~-30 {Tags:["3-5","Skill","Init"]}
        summon marker ~18 ~ ~-24 {Tags:["3-4","Skill","Init"]}
        summon marker ~18 ~ ~-18 {Tags:["3-3","Skill","Init"]}
        summon marker ~18 ~ ~-12 {Tags:["3-2","Skill","Init"]}
        summon marker ~18 ~ ~-6 {Tags:["3-1","Skill","Init"]}
        summon marker ~18 ~ ~ {Tags:["30","Skill","Init"]}
        summon marker ~18 ~ ~6 {Tags:["31","Skill","Init"]}
        summon marker ~18 ~ ~12 {Tags:["32","Skill","Init"]}
        summon marker ~18 ~ ~18 {Tags:["33","Skill","Init"]}
        summon marker ~18 ~ ~24 {Tags:["34","Skill","Init"]}
        summon marker ~18 ~ ~30 {Tags:["35","Skill","Init"]}
        summon marker ~18 ~ ~36 {Tags:["36","Skill","Init"]}

    ### 4 ~
        summon marker ~24 ~ ~-36 {Tags:["4-6","Skill","Init"]}
        summon marker ~24 ~ ~-30 {Tags:["4-5","Skill","Init"]}
        summon marker ~24 ~ ~-24 {Tags:["4-4","Skill","Init"]}
        summon marker ~24 ~ ~-18 {Tags:["4-3","Skill","Init"]}
        summon marker ~24 ~ ~-12 {Tags:["4-2","Skill","Init"]}
        summon marker ~24 ~ ~-6 {Tags:["4-1","Skill","Init"]}
        summon marker ~24 ~ ~ {Tags:["40","Skill","Init"]}
        summon marker ~24 ~ ~6 {Tags:["41","Skill","Init"]}
        summon marker ~24 ~ ~12 {Tags:["42","Skill","Init"]}
        summon marker ~24 ~ ~18 {Tags:["43","Skill","Init"]}
        summon marker ~24 ~ ~24 {Tags:["44","Skill","Init"]}
        summon marker ~24 ~ ~30 {Tags:["45","Skill","Init"]}
        summon marker ~24 ~ ~36 {Tags:["46","Skill","Init"]}

    ### 5 ~
        summon marker ~30 ~ ~-36 {Tags:["5-6","Skill","Init"]}
        summon marker ~30 ~ ~-30 {Tags:["5-5","Skill","Init"]}
        summon marker ~30 ~ ~-24 {Tags:["5-4","Skill","Init"]}
        summon marker ~30 ~ ~-18 {Tags:["5-3","Skill","Init"]}
        summon marker ~30 ~ ~-12 {Tags:["5-2","Skill","Init"]}
        summon marker ~30 ~ ~-6 {Tags:["5-1","Skill","Init"]}
        summon marker ~30 ~ ~ {Tags:["50","Skill","Init"]}
        summon marker ~30 ~ ~6 {Tags:["51","Skill","Init"]}
        summon marker ~30 ~ ~12 {Tags:["52","Skill","Init"]}
        summon marker ~30 ~ ~18 {Tags:["53","Skill","Init"]}
        summon marker ~30 ~ ~24 {Tags:["54","Skill","Init"]}
        summon marker ~30 ~ ~30 {Tags:["55","Skill","Init"]}
        summon marker ~30 ~ ~36 {Tags:["56","Skill","Init"]}

    ### ~6 ~
        summon marker ~36 ~ ~-36 {Tags:["6-6","Skill","Init"]}
        summon marker ~36 ~ ~-30 {Tags:["6-5","Skill","Init"]}
        summon marker ~36 ~ ~-24 {Tags:["6-4","Skill","Init"]}
        summon marker ~36 ~ ~-18 {Tags:["6-3","Skill","Init"]}
        summon marker ~36 ~ ~-12 {Tags:["6-2","Skill","Init"]}
        summon marker ~36 ~ ~-6 {Tags:["6-1","Skill","Init"]}
        summon marker ~36 ~ ~ {Tags:["60","Skill","Init"]}
        summon marker ~36 ~ ~6 {Tags:["61","Skill","Init"]}
        summon marker ~36 ~ ~12 {Tags:["62","Skill","Init"]}
        summon marker ~36 ~ ~18 {Tags:["63","Skill","Init"]}
        summon marker ~36 ~ ~24 {Tags:["64","Skill","Init"]}
        summon marker ~36 ~ ~30 {Tags:["65","Skill","Init"]}
        summon marker ~36 ~ ~36 {Tags:["66","Skill","Init"]}


## マップ番号を記録
    execute as @e[tag=Init] run scoreboard players operation @s SkillTree = #SkillMap Temp

## 初期化完了
    tag @e[tag=Init] remove Init
