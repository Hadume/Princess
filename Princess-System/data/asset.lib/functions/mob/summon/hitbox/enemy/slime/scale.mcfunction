#> asset.lib:mob/summon/hitbox/enemy/slime/scale
# 倍率
# @within function asset.lib:mob/summon/hitbox/enemy/slime/*

## 
  scoreboard players operation #Scale Temp *= #2 Const
## スコアを減らす
  scoreboard players remove #Size.Copy Temp 1
## ループ
  execute if score #Size.Copy Temp matches 1.. run function asset.lib:mob/summon/hitbox/enemy/slime/scale
