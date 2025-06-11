#> lib:hitbox/entity/phantom
# ファントムのサイズ
# @within function lib:hitbox/main

## サイズを取得
    function #api:get.nbt/size

## データを用意
    data modify storage lib:hitbox output set value [0.0f,0.0f]

## 計算
    ### 幅
        execute store result score #size temp run data get storage api:nbt size.data
        scoreboard players operation #size temp *= #2 const
        scoreboard players add #size temp 9
        execute store result storage lib:hitbox output[0] float 0.1 run scoreboard players get #size temp

    ### 高さ
        execute store result score #size temp run data get storage api:nbt size.data
        scoreboard players add #size temp 5
        execute store result storage lib:hitbox output[1] float 0.1 run scoreboard players get #size temp


## 一時使用scoreHolderをリセット
    scoreboard players reset #size temp
