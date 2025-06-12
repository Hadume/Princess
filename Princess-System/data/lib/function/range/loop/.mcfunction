#> lib:range/loop/
#
# @within function
#   lib:range/
#   lib:range/loop/1

## 座標を取得
    function #api:get.nbt/pos

## 座標を取得
    ### 魔法
        execute store result score #posX1 temp run data get storage temp:lib range.pos[0] 1000
        execute store result score #posY1 temp run data get storage temp:lib range.pos[1] 1000
        execute store result score #posZ1 temp run data get storage temp:lib range.pos[2] 1000

    ### MOB
        execute store result score #posX2 temp run data get storage api:nbt pos.data[0] 1000
        execute store result score #posY2 temp run data get storage api:nbt pos.data[1] 1000
        execute store result score #posZ2 temp run data get storage api:nbt pos.data[2] 1000

    ### MOB基準の魔法の位置
        scoreboard players operation #posX1 temp -= #posX2 temp
        scoreboard players operation #posY1 temp -= #posY2 temp
        scoreboard players operation #posZ1 temp -= #posZ2 temp


## MOBのサイズを取得
    ###
        function #api:e_dat/please
        data modify storage lib:hitbox input set from storage dat: _.entityType
        function #lib:hitbox

    ### データを移行
        execute store result score #sizeX temp run data get storage lib:hitbox output[0] 500
        execute store result score #sizeY temp run data get storage lib:hitbox output[1] 500


## Y座標を調整
    scoreboard players operation #posY1 temp -= #sizeY temp

## プラスに
    execute if score #posX1 temp matches ..-1 run scoreboard players operation #posX1 temp *= #-1 const
    execute if score #posY1 temp matches ..-1 run scoreboard players operation #posY1 temp *= #-1 const
    execute if score #posZ1 temp matches ..-1 run scoreboard players operation #posZ1 temp *= #-1 const

## 場合分け
    ### X
        execute if score #posX1 temp >= #sizeX temp run scoreboard players operation #posX3 temp = #sizeX temp
        execute if score #posX1 temp < #sizeX temp run scoreboard players operation #posX3 temp = #posX1 temp

    ### Y
        execute if score #posY1 temp >= #sizeY temp run scoreboard players operation #posY3 temp = #sizeY temp
        execute if score #posY1 temp < #sizeY temp run scoreboard players operation #posY3 temp = #posY1 temp

    ### Z
        execute if score #posZ1 temp >= #sizeX temp run scoreboard players operation #posZ3 temp = #sizeX temp
        execute if score #posZ1 temp < #sizeX temp run scoreboard players operation #posZ3 temp = #posZ1 temp


## 魔法と一番近いヒットボックスの点と魔法の距離
    scoreboard players operation #posX1 temp -= #posX3 temp
    scoreboard players operation #posY1 temp -= #posY3 temp
    scoreboard players operation #posZ1 temp -= #posZ3 temp

## 三平方
    ### ^2
        scoreboard players operation #posX1 temp *= #posX1 temp
        scoreboard players operation #posY1 temp *= #posY1 temp
        scoreboard players operation #posZ1 temp *= #posZ1 temp

    ###
        scoreboard players operation #posY1 temp += #posZ1 temp
        scoreboard players operation #posX1 temp += #posY1 temp

    ## 結果
        execute if score #posX1 temp <= #range temp run function lib:range/loop/1
