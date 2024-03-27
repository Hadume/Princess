#> asset.lib:mob/summon/hitbox/enemy/slime/
# スライムのサイズ
# @within function asset.lib:mob/summon/hitbox/enemy/

#> ScoreHolder
# @within function asset.lib:mob/summon/hitbox/enemy/slime/*
 #declare score_holder #Size.Copy
 #declare score_holder #Scale
## サイズを取得
  function api:get.nbt/size/
  execute store result score #Size.Copy Temp run data get storage api: Size
## データを用意
  data modify storage asset:temp HitBox set value [0.0f,0.0f]
## 倍率
  scoreboard players set #Scale Temp 1
  execute if score #Size.Copy Temp matches 1.. run function asset.lib:mob/summon/hitbox/enemy/slime/scale
## 計算
  scoreboard players operation #Scale Temp *= #51 Const
  execute store result storage asset:temp HitBox[0] float 0.005 store result storage asset:temp HitBox[1] float 0.005 run scoreboard players get #Scale Temp
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Scale
  scoreboard players reset #Size.Copy
