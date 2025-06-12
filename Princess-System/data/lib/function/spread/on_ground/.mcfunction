#> lib:spread/on_ground/
# 地面に接地させる
# @within function lib:spread/main

## 何ブロック内に地面があるか
    execute if score #spread temp matches 1.. run scoreboard players operation #spreadY2 temp += #spread temp
    execute if score #spread temp matches ..-1 run scoreboard players operation #spread temp -= #spreadY2 temp
    execute if score #spread temp matches ..-1 run scoreboard players operation #spreadY2 temp = #spread temp
    scoreboard players operation #spreadY2 temp /= #100 const

## 移動
    execute if score #spreadY2 temp matches 0.. at @s align y run return run function lib:spread/on_ground/plus.loop
    execute if score #spreadY2 temp matches ..0 at @s align y run return run function lib:spread/on_ground/minus.loop
