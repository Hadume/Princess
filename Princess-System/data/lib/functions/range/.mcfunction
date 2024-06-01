#> lib:range/
# 
# @public
# @input storage
#   lib: Range.Amount
#   lib: Range.Pierce
#   lib: Range.Target
# @output
#   tag Lib.InRange
#   lib: Range.Pierce

## 座標取得
  function api:get.nbt/pos/
  data modify storage lib:temp Pos set from storage api: Pos
## 範囲^2
  scoreboard players operation #Range Lib *= #Range Lib
## 攻撃する対象を特定
  tag @s add This
  execute if data storage lib: {Range:{Target:["Enemy"]}} as @e[type=#mob:living,tag=Enemy,distance=..16,sort=nearest,limit=1] at @s run function lib:range/loop/
  execute if data storage lib: {Range:{Target:["Player"]}} as @p[distance=..16] at @s run function lib:range/loop/
  tag @s remove This
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Range
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
  data remove storage lib: Range
  data remove storage lib:temp Pos
  data remove storage lib:temp Pos1
