#> lib:range/main
# 範囲内にEntityがいるか確認
# @within function lib:range/

#> ScoreHolder.Temp
# @within function lib:range/**
 #declare score_holder #Range
 #declare score_holder #Pierce
 #declare score_holder #Pos.X1
 #declare score_holder #Pos.Y1
 #declare score_holder #Pos.Z1
 #declare score_holder #Pos.X2
 #declare score_holder #Pos.Y2
 #declare score_holder #Pos.Z2
 #declare score_holder #Pos.X3
 #declare score_holder #Pos.Y3
 #declare score_holder #Pos.Z3
 #declare score_holder #Size.X
 #declare score_holder #Size.Y
#> Tags
# @within function
#   lib:range/main
#   lib:range/loop/1
 #declare tag Lib.TempRange

## データを用意
  execute store result score #Range Temp run data get storage lib: Range.Amount 1000
  execute store result score #Pierce Temp run data get storage lib: Range.Pierce
  execute if data storage lib: Range.Targets run data modify storage lib:temp Targets set from storage lib: Range.Targets
  ### 範囲^2
    scoreboard players operation #Range Temp *= #Range Temp
  ### 対象がいなかったら、全員を対象に
    execute unless data storage lib:temp Targets run data modify storage lib:temp Targets set value ["Enemy","Player"]
## 座標取得
  function api:get.nbt/pos
  data modify storage lib:temp Pos set from storage api: Pos
## ダメージを受けているMOBを除外
  execute unless data storage lib: {Range:{NoHurtTime:1b}} run data modify storage lib: Range.NoHurtTime set value 0b
## 特定されるだろうMObを指定
  execute if data storage lib: {Range:{Targets:["Enemy"],NoHurtTime:0b}} as @e[type=#mob:living,tag=Enemy,distance=..16] run tag @s add Lib.TempRange
  execute if data storage lib: {Range:{Targets:["Player"],NoHurtTime:0b}} as @a[distance=..16] run tag @s add Lib.TempRange
  execute if data storage lib: {Range:{Targets:["Enemy"],NoHurtTime:1b}} as @e[type=#mob:living,tag=Enemy,nbt={HurtTime:0s},distance=..16] run tag @s add Lib.TempRange
  execute if data storage lib: {Range:{Targets:["Player"],NoHurtTime:1b}} as @a[nbt={HurtTime:0s},distance=..16] run tag @s add Lib.TempRange
## 攻撃する対象を特定
  execute as @e[tag=Lib.TempRange,sort=nearest,limit=1] at @s run function lib:range/loop/
## 仮tagを削除
  execute as @e[tag=Lib.TempRange] run tag @s remove Lib.TempRange
## 対象数数を保存
  execute if score #Pierce Temp matches 1.. store result storage lib: Range.Pierced int 1 run scoreboard players get #Pierce Temp
  execute if score #Pierce Temp matches ..0 run data modify storage lib: Range.Pierced set value 0
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Range
  scoreboard players reset #Pierce
  scoreboard players reset #Pos.X1
  scoreboard players reset #Pos.Y1
  scoreboard players reset #Pos.Z1
  scoreboard players reset #Pos.X2
  scoreboard players reset #Pos.Y2
  scoreboard players reset #Pos.Z2
  scoreboard players reset #Pos.X3
  scoreboard players reset #Pos.Y3
  scoreboard players reset #Pos.Z3
  scoreboard players reset #Size.X
  scoreboard players reset #Size.Y
## 一時使用Storageを削除
  data remove storage lib:temp Pos
  data remove storage lib:temp Pos1
  data remove storage lib:temp Targets
