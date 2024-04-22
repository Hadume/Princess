#> lib:hitbox/phantom
# ファントムのサイズ
# @within function lib:hitbox/

#> ScoreHolder
# @private
 #declare score_holder #Size.Copy
## サイズを取得
  function api:get.nbt/size/
## データを用意
  data modify storage lib: HitBox set value [0.0f,0.0f]
## 計算
  ### 幅
    execute store result score #Size.Copy Temp run data get storage api: Size
    scoreboard players operation #Size.Copy Temp *= #2 Const
    scoreboard players add #Size.Copy Temp 9
    execute store result storage lib: HitBox[0] float 0.5 run scoreboard players get #Size.Copy Temp
  ### 高さ
    execute store result score #Size.Copy Temp run data get storage api: Size
    scoreboard players add #Size.Copy Temp 5
    execute store result storage lib: HitBox[1] float 0.5 run scoreboard players get #Size.Copy Temp
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Size.Copy
