#> asset.lib:magic/damage/
# 
# @within asset:magic/*/tick/main

#> ScoreHolder
# @within function asset.lib:magic/damage/**
 #declare score_holder #Pierce
 #declare score_holder #Range
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
# @within function asset.lib:magic/damage/**
 #declare tag Pierced
## 個人ストレージを呼ぶ
  function data.entity:please
## 魔法情報を取得
  data modify storage asset:temp Magic set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic
## 座標取得
  function api:get.nbt/pos/
  data modify storage asset:temp Pos set from storage api: Pos
## 各数値取得
  ## 攻撃力
    execute store result score #Lib.ATK Lib run data get storage asset:temp Magic.Amount
  ## 貫通数
    execute store result score #Pierce Temp run data get storage asset:temp Magic.Pierce
  ## 範囲 ^2
    execute store result score #Range Temp run data get storage asset:temp Magic.Range 1000
    scoreboard players operation #Range Temp *= #Range Temp
## 攻撃する対象を特定
  execute if data storage asset:temp {Magic:{Target:["Enemy"]}} as @e[type=#mob:living,tag=Enemy,distance=..16,sort=nearest,limit=1] at @s run function asset.lib:magic/damage/loop/
  #execute if data storage asset:temp {Magic:{Target:["Player"]}}
## 魔法を消す
  execute if data storage asset:temp {Pierced:1b} run kill @s
## まだ貫通できるなら
  execute if score #Pierce Temp matches 1.. store result storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Pierce int 1 run scoreboard players get #Pierce Temp
## tagを削除
  execute as @e[tag=Pierced] run tag @s remove Pierced
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
  data remove storage asset:temp Pos
  data remove storage asset:temp Pos1
  data remove storage asset:temp Magic
  data remove storage asset:temp Pierced
