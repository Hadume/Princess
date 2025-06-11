#> lib:hitbox/entity/slime/
# スライムのサイズ
# @within function lib:hitbox/main

## サイズを取得
    function #api:get.nbt/size
    execute store result score #size temp run data get storage api:nbt size.data

## 倍率
    scoreboard players set #scale temp 1
    function lib:hitbox/entity/slime/scale.loop

## データを用意
    data modify storage lib:hitbox output set value [0.0f,0.0f]

## 計算
    scoreboard players operation #scale temp *= #51 const
    execute store result storage lib:hitbox output[0] float 0.01 run scoreboard players get #scale temp
    execute store result storage lib:hitbox output[1] float 0.01 run scoreboard players get #scale temp

## 一時使用scoreHolderをリセット
    scoreboard players reset #scale temp
    scoreboard players reset #size temp
