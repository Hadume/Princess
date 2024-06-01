#> lib:range/loop/
# 
# @within function
#   lib:range/
#   lib:range/loop/1

## 座標を取得
  function api:get.nbt/pos/
## 座標を取得
  ### 魔法
    execute store result score #Pos.X1 Temp run data get storage lib:temp Pos[0] 1000
    execute store result score #Pos.Y1 Temp run data get storage lib:temp Pos[1] 1000
    execute store result score #Pos.Z1 Temp run data get storage lib:temp Pos[2] 1000
  ### MOB
    execute store result score #Pos.X2 Temp run data get storage api: Pos[0] 1000
    execute store result score #Pos.Y2 Temp run data get storage api: Pos[1] 1000
    execute store result score #Pos.Z2 Temp run data get storage api: Pos[2] 1000
  ### MOB基準の魔法の位置
    scoreboard players operation #Pos.X1 Temp -= #Pos.X2 Temp
    scoreboard players operation #Pos.Y1 Temp -= #Pos.Y2 Temp
    scoreboard players operation #Pos.Z1 Temp -= #Pos.Z2 Temp
## MOBのサイズを取得
  ### 
    function data:please
    data modify storage lib: id set from storage data: _.id
    function lib:hitbox/
  ### データを移行
    execute store result score #Size.X Temp run data get storage lib: HitBox[0] 1000
    execute store result score #Size.Y Temp run data get storage lib: HitBox[1] 1000
## Y座標を調整
  scoreboard players operation #Pos.Y1 Temp -= #Size.Y Temp
## プラスに
  execute if score #Pos.X1 Temp matches ..-1 run scoreboard players operation #Pos.X1 Temp *= #-1 Const
  execute if score #Pos.Y1 Temp matches ..-1 run scoreboard players operation #Pos.Y1 Temp *= #-1 Const
  execute if score #Pos.Z1 Temp matches ..-1 run scoreboard players operation #Pos.Z1 Temp *= #-1 Const
## 場合分け
  ### X
    execute if score #Pos.X1 Temp >= #Size.X Temp run scoreboard players operation #Pos.X3 Temp = #Size.X Temp
    execute if score #Pos.X1 Temp < #Size.X Temp run scoreboard players operation #Pos.X3 Temp = #Pos.X1 Temp
  ### Y
    execute if score #Pos.Y1 Temp >= #Size.Y Temp run scoreboard players operation #Pos.Y3 Temp = #Size.Y Temp
    execute if score #Pos.Y1 Temp < #Size.Y Temp run scoreboard players operation #Pos.Y3 Temp = #Pos.Y1 Temp
  ### Z
    execute if score #Pos.Z1 Temp >= #Size.X Temp run scoreboard players operation #Pos.Z3 Temp = #Size.X Temp
    execute if score #Pos.Z1 Temp < #Size.X Temp run scoreboard players operation #Pos.Z3 Temp = #Pos.Z1 Temp
## 魔法と一番近いヒットボックスの点と魔法の距離
  scoreboard players operation #Pos.X1 Temp -= #Pos.X3 Temp
  scoreboard players operation #Pos.Y1 Temp -= #Pos.Y3 Temp
  scoreboard players operation #Pos.Z1 Temp -= #Pos.Z3 Temp
## 三平方
  ### ^2
    scoreboard players operation #Pos.X1 Temp *= #Pos.X1 Temp
    scoreboard players operation #Pos.Y1 Temp *= #Pos.Y1 Temp
    scoreboard players operation #Pos.Z1 Temp *= #Pos.Z1 Temp
  ### 
    scoreboard players operation #Pos.Y1 Temp += #Pos.Z1 Temp
    scoreboard players operation #Pos.X1 Temp += #Pos.Y1 Temp
## 結果
  execute if score #Pos.X1 Temp <= #Range Lib run function lib:range/loop/1
