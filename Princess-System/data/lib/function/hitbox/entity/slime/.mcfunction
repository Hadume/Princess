#> lib:hitbox/entity/slime/
# スライムのサイズ
# @within function lib:hitbox/main

#> ScoreHolder
# @within function lib:hitbox/entity/slime/*
    #declare score_holder #Size
    #declare score_holder #Scale

## サイズを取得
    function #api:get.nbt/size
    execute store result score #Size Temp run data get storage api: Size

## 倍率
    scoreboard players set #Scale Temp 1
    execute if score #Size Temp matches 1.. run function lib:hitbox/entity/slime/scale.loop

## データを用意
    data modify storage lib: HitBox set value [0.0f,0.0f]

## 計算
    scoreboard players operation #Scale Temp *= #51 Const
    execute store result storage lib: HitBox[0] float 0.01 store result storage lib: HitBox[1] float 0.01 run scoreboard players get #Scale Temp

## 一時使用ScoreHolderをリセット
    scoreboard players reset #Scale Temp
    scoreboard players reset #Size Temp
