#> asset.lib:magic/spell/init/display/main
# 表示用Entityを初期化
# @within function asset.lib:magic/spell/init/display/

## 向きを変更
    data modify entity @s Rotation[0] set from storage api:nbt rotation.data[0]

## データを用意
    ### サイズ
        data modify storage temp: transformation.scale set value [0.0f,0.0f,0.0f]
        data modify storage temp: transformation.scale[] set from storage asset:magic range

    ### 位置
        data modify storage temp: transformation.translation set value [0.0f,0.0f,0.0f]
        execute store result score #root2 temp run data get storage main: const.SQRT2 1000
        execute store result score #halfRange temp run data get storage asset:magic range 50
        #### X
            execute store result storage temp: transformation.translation[0] float -0.005 run data get storage asset:magic range 100

        #### Y
            execute store result score #rotationY temp run data get storage api: Rotation[1] 100
            scoreboard players add #rotationY temp 4500
            execute store result storage math: in int 0.01 run scoreboard players get #rotationY temp
            function #math:cos
            execute store result score #translation temp run data get storage math: out 1000
            scoreboard players operation #translation temp *= #root2 temp
            scoreboard players operation #translation temp *= #halfRange temp
            scoreboard players add #translation temp 100000000
            execute store result storage temp: transformation.translation[1] float -0.00000001 run scoreboard players get #translation temp

        #### Z
            execute store result score #rotationY temp run data get storage api: Rotation[1] 100
            scoreboard players remove #rotationY temp 4500
            execute store result storage math: in int 0.01 run scoreboard players get #rotationY temp
            function #math:cos
            execute store result score #translation temp run data get storage math: out 1000
            scoreboard players operation #translation temp *= #root2 temp
            scoreboard players operation #translation temp *= #halfRange temp
            execute store result storage temp: transformation.translation[2] float -0.00000001 run scoreboard players get #translation temp



## 回転
    ### データを用意
        data modify storage temp: transformation.right_rotation set value {axis:[1.0f,0.0f,0.0f],angle:0.0f}

    ### 向きを取得
        execute store result score #rotationY temp run data get storage api: Rotation[1] 100

    ### -31400 .. 31400
        execute store result score #pi temp run data get storage main: const.PI 10000
        scoreboard players operation #rotationY temp *= #pi temp
        scoreboard players operation #rotationY temp /= #18000 const

    ###
        execute store result storage temp: transformation.right_rotation.angle float 0.0001 run scoreboard players get #rotationY temp


## 代入
    data modify entity @s transformation merge from storage temp: transformation

## 元の魔法とIDで結びつける
    scoreboard players operation @s ID = #spellID temp

## 初期化tagを削除
    tag @s remove spellInit

## 一時使用scoreHolderをリセット
    scoreboard players reset #halfRange temp
    scoreboard players reset #translation temp
    scoreboard players reset #translationY temp
    scoreboard players reset #rotationY temp
    scoreboard players reset #root2 temp
    scoreboard players reset #pi temp

## 一時使用storageを削除
    data remove storage temp: transformation
