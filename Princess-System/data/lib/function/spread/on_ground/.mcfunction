#> lib:spread/on_ground/
# 地面に接地させる
# @within function lib:spread/main

## 何ブロック内に地面があるか
    execute if score #Spread Temp matches 1.. run scoreboard players operation #Spread.Y-2 Temp += #Spread Temp
    execute if score #Spread Temp matches ..-1 run scoreboard players operation #Spread Temp -= #Spread.Y-2 Temp
    execute if score #Spread Temp matches ..-1 run scoreboard players operation #Spread.Y-2 Temp = #Spread Temp
    scoreboard players operation #Spread.Y-2 Temp /= #100 Const

## 移動
    execute if score #Spread.Y-2 Temp matches 0.. at @s align y run function lib:spread/on_ground/plus.loop
    execute if score #Spread.Y-2 Temp matches ..0 at @s align y run function lib:spread/on_ground/minus.loop
