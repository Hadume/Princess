#> lib:spread/
# 拡散
# @public
# @input storage
#   lib: Spread.At
#   lib: Spread.Amount
#   lib: Spread.OnGround

#> ScoreHolder
# @within function lib:spread/**
 #declare score_holder #Pos.X
 #declare score_holder #Pos.Y
 #declare score_holder #Pos.Z
 #declare score_holder #Spread.1-0
 #declare score_holder #Spread.1-1
 #declare score_holder #Spread.2-0
 #declare score_holder #Spread.2-1
 #declare score_holder #Rand
## Posを取得
  execute unless data storage lib: Spread.At run function api:get.nbt/pos/
  execute unless data storage lib: Spread.At run data modify storage lib:temp Pos set from storage api: Pos
  execute if data storage lib: Spread.At run data modify storage lib:temp Pos set from storage lib: Spread.At
## 拡散値を取得
  ### XZ
    execute if data storage lib: Spread.Amount[0] store result score #Spread.1-0 Temp run data get storage lib: Spread.Amount[0] 100
    execute unless data storage lib: Spread.Amount[0] store result score #Spread.1-0 Temp run data get storage lib: Spread.Amount 100
    scoreboard players operation #Spread.1-1 Temp = #Spread.1-0 Temp
    scoreboard players operation #Spread.1-0 Temp *= #2 Const
    execute if score #Spread.1-0 Temp matches 0 run scoreboard players set #Spread.1-0 Temp 1
  ### Y
    execute if data storage lib: Spread.Amount[1] store result score #Spread.2-0 Temp run data get storage lib: Spread.Amount[1] 100
    execute unless data storage lib: Spread.Amount[1] store result score #Spread.2-0 Temp run data get storage lib: Spread.Amount 100
    scoreboard players operation #Spread.2-1 Temp = #Spread.2-0 Temp
    scoreboard players operation #Spread.2-0 Temp *= #2 Const
    execute if score #Spread.2-0 Temp matches 0 run scoreboard players set #Spread.2-0 Temp 1
## データを用意
  data modify storage lib:temp Pos1 set value [0.0d,0.0d,0.0d]
## 座標を計算
  execute store result score #Pos.X Temp run data get storage lib:temp Pos[0] 100
  execute store result score #Pos.Y Temp run data get storage lib:temp Pos[1] 100
  execute store result score #Pos.Z Temp run data get storage lib:temp Pos[2] 100
  ### X
    execute store result score #Rand Temp run random value 1..
    scoreboard players operation #Rand Temp %= #Spread.1-0 Temp
    scoreboard players operation #Rand Temp -= #Spread.1-1 Temp
    execute store result storage lib:temp Pos1[0] double 0.01 run scoreboard players operation #Pos.X Temp += #Rand Temp
  ### Z
    execute store result score #Rand Temp run random value 1..
    scoreboard players operation #Rand Temp %= #Spread.1-0 Temp
    scoreboard players operation #Rand Temp -= #Spread.1-1 Temp
    execute store result storage lib:temp Pos1[2] double 0.01 run scoreboard players operation #Pos.Z Temp += #Rand Temp
  ### Y
    execute store result score #Rand Temp run random value 1..
    scoreboard players operation #Rand Temp %= #Spread.2-0 Temp
    scoreboard players operation #Rand Temp -= #Spread.2-1 Temp
    execute store result storage lib:temp Pos1[1] double 0.01 run scoreboard players operation #Pos.Y Temp += #Rand Temp
## 座標を代入
  execute if entity @s[type=!player] run data modify entity @s Pos set from storage lib:temp Pos1
## 地面に設置させる
  execute if data storage lib: {Spread:{OnGround:1b}} run function lib:spread/on_ground/
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Pos.X
  scoreboard players reset #Pos.Y
  scoreboard players reset #Pos.Z
  scoreboard players reset #Spread.1-0
  scoreboard players reset #Spread.1-1
  scoreboard players reset #Spread.2-0
  scoreboard players reset #Spread.2-1
  scoreboard players reset #Rand
## 一時使用Storageを削除
  data remove storage lib:temp At
  data remove storage lib:temp Pos
  data remove storage lib:temp Pos1
  data remove storage lib: Spread.At
  data remove storage lib: Spread.Amount
  data remove storage lib: Spread.OnGround
