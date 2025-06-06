#> lib:die/entity/loot/main
# 報酬を渡す
# @within function lib:die/entity/loot/loop

## スコア
    scoreboard players operation @s Exp -= #Exp Temp
    scoreboard players operation @s Money += #Money Temp

## レベルアップの確認
    function #lib:exp

## tagを付ける
    tag @s add Looted
