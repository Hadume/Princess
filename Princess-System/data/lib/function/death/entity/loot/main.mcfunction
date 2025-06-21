#> lib:death/entity/loot/main
# 報酬を渡す
# @within function lib:death/entity/loot/loop

## スコア
    scoreboard players operation @s exp -= #exp temp
    scoreboard players operation @s money += #money temp

## レベルアップの確認
    function #lib:exp

## tagを付ける
    tag @s add looted
