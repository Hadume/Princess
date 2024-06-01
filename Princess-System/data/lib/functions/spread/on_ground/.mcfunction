#> lib:spread/on_ground/
# 
# @within function lib:spread/

## 何ブロック内に地面があるか
  execute if score #Rand Temp matches 1.. run scoreboard players operation #Spread.2-1 Temp += #Rand Temp
  execute if score #Rand Temp matches ..-1 run scoreboard players operation #Rand Temp -= #Spread.2-1 Temp
  execute if score #Rand Temp matches ..-1 run scoreboard players operation #Spread.2-1 Temp = #Rand Temp
  scoreboard players operation #Spread.2-1 Temp /= #100 Const
## 移動
  execute if score #Spread.2-1 Temp matches 0.. at @s align y run function lib:spread/on_ground/plus.loop
  execute if score #Spread.2-1 Temp matches ..0 at @s align y run function lib:spread/on_ground/minus.loop
