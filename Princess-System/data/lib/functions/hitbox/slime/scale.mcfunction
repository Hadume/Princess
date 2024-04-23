#> lib:hitbox/slime/scale
# 倍率
# @within function lib:hitbox/slime/*

## 
  scoreboard players operation #Scale Temp *= #2 Const
## スコアを減らす
  scoreboard players remove #Size.Copy Temp 1
## ループ
  execute if score #Size.Copy Temp matches 1.. run function lib:hitbox/slime/scale
